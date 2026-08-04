

with proj_sales as (

    -- Path A: opportunity → project (primary)
    select
        o.date_closed::date                                                                   as date,
        p.date_first_marked_compete::date                                                     as completed_date,
        o.quote_number                                                                        as opp,
        (p.prefixed_id || '-' || o.quote_number)                                             as id,
        o.name                                                                                as name,
        p.project_name_with_id                                                               as project,
        o.sales_name                                                                          as salesperson,
        o.ops_name                                                                            as opsperson,
        o.sales_email                                                                         as sales_email,
        o.value_ex_gst                                                                        as value,
        0::numeric                                                                            as designer_commissions,
        case when o.is_reported_sale then true else false end                                 as is_active_sales,
        'Commercial'                                                                          as division,
        'Projects'                                                                            as business_unit,
        o.state                                                                               as state,
        o.account                                                                             as client_account,
        o.contact                                                                             as client_contact
    from "dw_dev"."consumption"."ops_opportunities" o
    join "dw_dev"."consumption"."ops_opportunity_projects" bp
        on o.id = bp.opportunity_id
    join "dw_dev"."consumption"."ops_projects" p
        on bp.project_id = p.project_id
    where o.status = 'Won'
      and p.project_type = 'Direct'
      and lower(p.project_name) not like '%test%'
      and p.project_name is not null
      and coalesce(p.ll_status_display, '') <> 'Cancelled'

    union

    -- Path B: project → opportunity (safety net)
    select
        o.date_closed::date                                                                   as date,
        p.date_first_marked_compete::date                                                     as completed_date,
        o.quote_number                                                                        as opp,
        (p.prefixed_id || '-' || o.quote_number)                                             as id,
        o.name                                                                                as name,
        p.project_name_with_id                                                               as project,
        o.sales_name                                                                          as salesperson,
        o.ops_name                                                                            as opsperson,
        o.sales_email                                                                         as sales_email,
        o.value_ex_gst                                                                        as value,
        0::numeric                                                                            as designer_commissions,
        case when o.is_reported_sale then true else false end                                 as is_active_sales,
        'Commercial'                                                                          as division,
        'Projects'                                                                            as business_unit,
        o.state                                                                               as state,
        o.account                                                                             as client_account,
        o.contact                                                                             as client_contact
    from "dw_dev"."consumption"."ops_projects" p
    join "dw_dev"."consumption"."ops_opportunity_projects" bpo
        on p.project_id = bpo.project_id
    join "dw_dev"."consumption"."ops_opportunities" o
        on bpo.opportunity_id = o.id
    where p.project_type = 'Direct'
      and lower(p.project_name) not like '%test%'
      and o.status = 'Won'
      and coalesce(p.ll_status_display, '') <> 'Cancelled'

),

ranked as (
    select *,
        row_number() over (partition by opp order by date) as rank
    from proj_sales
),

deduped_proj_sales as (
    select
        date, completed_date, id, name, project,
        salesperson, opsperson, sales_email,
        value, designer_commissions, is_active_sales,
        division, business_unit, state,
        client_account, client_contact
    from ranked
    where rank = 1
),

tracker_jobs as (
    select distinct
        j.created_date::date                                                                  as date,
        j.completed_date::date                                                                as completed_date,
        concat(j.job_name_prefix, j.src_sys_id)                                              as id,
        j.job_reference_with_development                                                      as name,
        j.name                                                                                as project,
        j.salesperson                                                                         as salesperson,
        j.ops_person                                                                          as opsperson,
        j.sales_email                                                                         as sales_email,
        j.value_ex_gst                                                                        as value,
        j.designer_commission_amt                                                             as designer_commissions,
        case when j.is_reported_sale is true then true else false end                         as is_active_sales,
        case
            when j.business_unit in ('Projects', 'Apartments') then 'Commercial'
            else j.business_unit
        end                                                                                   as division,
        j.business_unit                                                                       as business_unit,
        j.state                                                                               as state,
        j.client_account                                                                      as client_account,
        j.client_contact                                                                      as client_contact
    from "dw_dev"."consumption"."ops_jobs" j
    where j.value_ex_gst > 0
      and j.quoterite_job_id is null
      and j.is_exempt is not true
),

tracker_jobs_with_qr as (
    select distinct
        j.created_date::date                                                                  as date,
        j.completed_date::date                                                                as completed_date,
        j.quoterite_job_id                                                                    as id,
        j.job_reference_with_development                                                      as name,
        j.name                                                                                as project,
        j.salesperson                                                                         as salesperson,
        j.ops_person                                                                          as opsperson,
        j.sales_email                                                                         as sales_email,
        j.value_ex_gst                                                                        as value,
        j.designer_commission_amt                                                             as designer_commissions,
        case when j.is_reported_sale is true then true else false end                         as is_active_sales,
        case
            when j.business_unit in ('Projects', 'Apartments') then 'Commercial'
            else j.business_unit
        end                                                                                   as division,
        j.business_unit                                                                       as business_unit,
        j.state                                                                               as state,
        j.client_account                                                                      as client_account,
        j.client_contact                                                                      as client_contact
    from "dw_dev"."consumption"."ops_jobs" j
    where j.value_ex_gst > 0
      and j.quoterite_job_id is not null
      and j.is_exempt is not true
),

qr_only_orders as (
    select
        vq.order_created::date                                                                as date,
        null::date                                                                            as completed_date,
        vq.order_unique_id                                                                    as id,
        vq.order_sidemark                                                                     as name,
        vq.order_sidemark                                                                     as project,
        vq.sales_rep                                                                          as salesperson,
        null::varchar                                                                         as opsperson,
        vls.email                                                                             as sales_email,
        vq.order_value_ex_gst                                                                 as value,
        0                                                                                     as designer_commissions,
        case when s.is_reported_sale is true then true else false end                         as is_active_sales,
        'Custom'                                                                              as division,
        'Custom'                                                                              as business_unit,
        case
            when vq.sales_rep in ('Josh Rynderman', 'Angela Tracey') then 'QLD'
            when vq.sales_rep = 'Simone Gatto' then 'NSW'
            else 'VIC'
        end                                                                                   as state,
        vq.company_name                                                                       as client_account,
        vq.email                                                                              as client_contact
    from quoterite.v_orders vq
    left join utils.v_lovelight_sales vls
        on vls.employee = vq.sales_rep
    left join "dw_dev"."processing_tracker"."dim_salespeople" s
        on s.email = vls.email
    where vq.order_created::date >= date '2024-11-01'
      and vq.sales_rep not in ('Brock Cannon', 'Izzy Johannesen')
      and not exists (
          select 1
          from "dw_dev"."processing_tracker"."dim_job" j_any
          where j_any.quoterite_job_id = vq.order_unique_id
      )
)

select * from deduped_proj_sales
union
select * from tracker_jobs
union
select * from tracker_jobs_with_qr
union
select * from qr_only_orders