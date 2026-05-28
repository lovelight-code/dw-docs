

-- ===============================================================
-- Model: sales
-- Description:
--   Unified sales table replicating legacy tracker.v_sales.
--   Combines Project-linked opportunities, Tracker jobs, and
--   QuoteRite orders into a single denormalized output.
--
-- Source paths:
--   1. proj_sales      – won opportunities linked to Direct projects
--                        (dual UNION: opp→project + project→opp safety net)
--   2. tracker_jobs    – Tracker jobs with no Quoterite ID
--   3. tracker_jobs_with_qr – Tracker jobs that carry a Quoterite ID
--   4. qr_only_orders  – Quoterite orders (≥ 2024-11-01) with no Tracker match
-- ===============================================================

with proj_sales as (

    -- Path A: opportunity → project (primary path)
    select
        convert_timezone('Australia/Melbourne', 'UTC', fo.closed_dt::timestamp)::date        as date,
        convert_timezone('Australia/Melbourne', 'UTC', fp.date_first_marked_compete::timestamp)::date as completed_date,
        o.quote_number                                                                        as opp,
        (p.prefixed_id || '-' || o.quote_number)                                             as id,
        o.opportunity_name                                                                    as name,
        p.project_name_with_id                                                               as project,
        s.full_name                                                                           as salesperson,
        op.full_name                                                                          as opsperson,
        s.email                                                                               as sales_email,
        fo.value_ex_gst                                                                       as value,
        0::numeric                                                                            as designer_commissions,
        case when s.is_reported_sale then true else false end                                 as is_active_sales,
        'Commercial'                                                                          as division,
        'Projects'                                                                            as business_unit,
        st.state_code                                                                         as state,
        a.account_name                                                                        as client_account,
        c.display_name                                                                        as client_contact
    from "dw_dev"."processing_tracker"."fct_opportunity" fo
    left join "dw_dev"."processing_tracker"."dim_opportunity" o
        on fo.opportunity_sk = o.opportunity_sk
    left join "dw_dev"."processing_tracker"."br_opportunity_project" bp
        on o.opportunity_id = bp.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_project" p
        on bp.project_id = p.project_id
    left join "dw_dev"."processing_tracker"."fct_project" fp
        on p.project_sk = fp.project_sk
    left join "dw_dev"."processing_tracker"."br_project_project_ll_status" bps
        on p.project_id = bps.project_id
    left join "dw_dev"."processing_tracker"."dim_project_ll_status" ps
        on bps.project_ll_status_id = ps.project_ll_status_id
    left join "dw_dev"."processing_tracker"."br_opportunity_salespeople" bs
        on o.opportunity_id = bs.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_salespeople" s
        on bs.salespeople_id = s.salespeople_id
    left join "dw_dev"."processing_tracker"."br_opportunity_operation" bop
        on o.opportunity_id = bop.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_operation" op
        on bop.operation_id = op.operation_id
    left join "dw_dev"."processing_tracker"."br_opportunity_state" bst
        on o.opportunity_id = bst.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_state" st
        on bst.state_id = st.state_id
    left join "dw_dev"."processing_tracker"."br_opportunity_client_account" ba
        on o.opportunity_id = ba.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_account" a
        on ba.account_id = a.account_id
    left join "dw_dev"."processing_tracker"."br_opportunity_contact" bc
        on o.opportunity_id = bc.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_contact" c
        on bc.contact_id = c.contact_id
    where p.project_name is not null
      and o.status_display = 'Won'
      and p.project_type = 'Direct'
      and lower(p.project_name) not like '%test%'
      and ps.status_display <> 'Cancelled'

    union

    -- Path B: project → opportunity (safety net for opps linked from the project side)
    select
        convert_timezone('Australia/Melbourne', 'UTC', fo.closed_dt::timestamp)::date        as date,
        convert_timezone('Australia/Melbourne', 'UTC', fp.date_first_marked_compete::timestamp)::date as completed_date,
        o.quote_number                                                                        as opp,
        (p.prefixed_id || '-' || o.quote_number)                                             as id,
        o.opportunity_name                                                                    as name,
        p.project_name_with_id                                                               as project,
        s.full_name                                                                           as salesperson,
        op.full_name                                                                          as opsperson,
        s.email                                                                               as sales_email,
        fo.value_ex_gst                                                                       as value,
        0::numeric                                                                            as designer_commissions,
        case when s.is_reported_sale then true else false end                                 as is_active_sales,
        'Commercial'                                                                          as division,
        'Projects'                                                                            as business_unit,
        st.state_code                                                                         as state,
        a.account_name                                                                        as client_account,
        c.display_name                                                                        as client_contact
    from "dw_dev"."processing_tracker"."dim_project" p
    left join "dw_dev"."processing_tracker"."br_project_opportunity" bpo
        on p.project_id = bpo.project_id
    left join "dw_dev"."processing_tracker"."dim_opportunity" o
        on bpo.opportunity_id = o.opportunity_id
    left join "dw_dev"."processing_tracker"."fct_opportunity" fo
        on o.opportunity_sk = fo.opportunity_sk
    left join "dw_dev"."processing_tracker"."fct_project" fp
        on p.project_sk = fp.project_sk
    left join "dw_dev"."processing_tracker"."br_project_project_ll_status" bps
        on p.project_id = bps.project_id
    left join "dw_dev"."processing_tracker"."dim_project_ll_status" ps
        on bps.project_ll_status_id = ps.project_ll_status_id
    left join "dw_dev"."processing_tracker"."br_opportunity_salespeople" bs
        on o.opportunity_id = bs.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_salespeople" s
        on bs.salespeople_id = s.salespeople_id
    left join "dw_dev"."processing_tracker"."br_opportunity_operation" bop
        on o.opportunity_id = bop.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_operation" op
        on bop.operation_id = op.operation_id
    left join "dw_dev"."processing_tracker"."br_opportunity_state" bst
        on o.opportunity_id = bst.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_state" st
        on bst.state_id = st.state_id
    left join "dw_dev"."processing_tracker"."br_project_client_account" ba
        on p.project_id = ba.project_id
    left join "dw_dev"."processing_tracker"."dim_account" a
        on ba.account_id = a.account_id
    left join "dw_dev"."processing_tracker"."br_project_contact" bc
        on p.project_id = bc.project_id
    left join "dw_dev"."processing_tracker"."dim_contact" c
        on bc.contact_id = c.contact_id
    where p.project_type = 'Direct'
      and lower(p.project_name) not like '%test%'
      and o.status_display = 'Won'
      and ps.status_display <> 'Cancelled'

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
        convert_timezone('Australia/Melbourne', 'UTC', fj.created_dt::timestamp)::date       as date,
        convert_timezone('Australia/Melbourne', 'UTC', fj.completed_dt::timestamp)::date     as completed_date,
        concat(j.job_name_prefix, j.src_sys_id)                                              as id,
        j.job_reference_with_development                                                      as name,
        j.job_name                                                                            as project,
        s.full_name                                                                           as salesperson,
        op.full_name                                                                          as opsperson,
        s.email                                                                               as sales_email,
        fj.value_ex_gst                                                                       as value,
        fj.designer_commission_amt                                                            as designer_commissions,
        case when s.is_reported_sale is true then true else false end                         as is_active_sales,
        case
            when j.business_unit in ('Projects', 'Apartments') then 'Commercial'
            else j.business_unit
        end                                                                                   as division,
        j.business_unit,
        j.state_code                                                                          as state,
        a.account_name                                                                        as client_account,
        c.display_name                                                                        as client_contact
    from "dw_dev"."processing_tracker"."fct_job" fj
    left join "dw_dev"."processing_tracker"."dim_job" j
        on fj.job_sk = j.job_sk
    left join "dw_dev"."processing_tracker"."br_job_job_status" bjs
        on j.job_id = bjs.job_id
    left join "dw_dev"."processing_tracker"."dim_job_status" js
        on bjs.job_status_id = js.job_status_id
    left join "dw_dev"."processing_tracker"."br_job_salespeople" bjsales
        on j.job_id = bjsales.job_id
    left join "dw_dev"."processing_tracker"."dim_salespeople" s
        on bjsales.salespeople_id = s.salespeople_id
    left join "dw_dev"."processing_tracker"."br_job_operation" bjo
        on j.job_id = bjo.job_id
    left join "dw_dev"."processing_tracker"."dim_operation" op
        on bjo.operation_id = op.operation_id
    left join "dw_dev"."processing_tracker"."br_job_account" bja
        on j.job_id = bja.job_id
    left join "dw_dev"."processing_tracker"."dim_account" a
        on bja.account_id = a.account_id
    left join "dw_dev"."processing_tracker"."br_job_client_contact" bjc
        on j.job_id = bjc.job_id
    left join "dw_dev"."processing_tracker"."dim_contact" c
        on bjc.contact_id = c.contact_id
    where fj.value_ex_gst > 0
      and js.status <> 'Cancelled'
      and j.quoterite_job_id is null
      and j.is_invoicing_exempted is not true
),

tracker_jobs_with_qr as (
    select distinct
        convert_timezone('Australia/Melbourne', 'UTC', fj.created_dt::timestamp)::date       as date,
        convert_timezone('Australia/Melbourne', 'UTC', fj.completed_dt::timestamp)::date     as completed_date,
        j.quoterite_job_id                                                                    as id,
        j.job_reference_with_development                                                      as name,
        j.job_name                                                                            as project,
        s.full_name                                                                           as salesperson,
        op.full_name                                                                          as opsperson,
        s.email                                                                               as sales_email,
        fj.value_ex_gst                                                                       as value,
        fj.designer_commission_amt                                                            as designer_commissions,
        case when s.is_reported_sale is true then true else false end                         as is_active_sales,
        case
            when j.business_unit in ('Projects', 'Apartments') then 'Commercial'
            else j.business_unit
        end                                                                                   as division,
        j.business_unit,
        j.state_code                                                                          as state,
        a.account_name                                                                        as client_account,
        c.display_name                                                                        as client_contact
    from "dw_dev"."processing_tracker"."fct_job" fj
    left join "dw_dev"."processing_tracker"."dim_job" j
        on fj.job_sk = j.job_sk
    left join "dw_dev"."processing_tracker"."br_job_job_status" bjs
        on j.job_id = bjs.job_id
    left join "dw_dev"."processing_tracker"."dim_job_status" js
        on bjs.job_status_id = js.job_status_id
    left join "dw_dev"."processing_tracker"."br_job_salespeople" bjsales
        on j.job_id = bjsales.job_id
    left join "dw_dev"."processing_tracker"."dim_salespeople" s
        on bjsales.salespeople_id = s.salespeople_id
    left join "dw_dev"."processing_tracker"."br_job_operation" bjo
        on j.job_id = bjo.job_id
    left join "dw_dev"."processing_tracker"."dim_operation" op
        on bjo.operation_id = op.operation_id
    left join "dw_dev"."processing_tracker"."br_job_account" bja
        on j.job_id = bja.job_id
    left join "dw_dev"."processing_tracker"."dim_account" a
        on bja.account_id = a.account_id
    left join "dw_dev"."processing_tracker"."br_job_contact" bjc
        on j.job_id = bjc.job_id
    left join "dw_dev"."processing_tracker"."dim_contact" c
        on bjc.contact_id = c.contact_id
    where fj.value_ex_gst > 0
      and js.status <> 'Cancelled'
      and j.quoterite_job_id is not null
      and j.is_invoicing_exempted is not true
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