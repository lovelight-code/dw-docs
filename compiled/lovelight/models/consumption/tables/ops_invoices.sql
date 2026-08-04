

with inv_base as (

    select
        invoice_id,
        invoice_sk,
        src_sys_id,
        myob_invoice_reference_number,
        xero_invoice_id,
        status,
        business_unit,
        is_paid,
        src_created_at
    from "dw_dev"."processing_tracker"."dim_invoice"
    where (
        (myob_invoice_reference_number is not null and myob_invoice_reference_number <> '')
        or xero_invoice_id is not null
    )

),

inv_facts as (

    select
        invoice_sk,
        amount_due,
        issue_dt,
        paid_dt,
        created_dt
    from "dw_dev"."processing_tracker"."fct_invoice"

),

job_inv as (

    select
        ib.myob_invoice_reference_number,
        ib.xero_invoice_id,
        ib.invoice_id                               as tracker_invoice_id,
        ib.src_sys_id,
        ib.status,
        ib.is_paid,
        ib.src_created_at::date                     as created_date,
        iff.amount_due,
        iff.issue_dt                                as issue_date,
        iff.paid_dt                                 as paid_date,
        j.job_name                                  as job,
        ib.business_unit,
        case
            when ib.business_unit in ('Projects', 'Apartments') then 'Commercial'
            else ib.business_unit
        end                                         as division,
        j.state_code                                as state,
        sp.email                                    as sales_email,
        op.email                                    as ops_email,
        1                                           as link_priority
    from inv_base ib
    left join inv_facts iff
        on iff.invoice_sk = ib.invoice_sk
    inner join "dw_dev"."processing_tracker"."br_invoice_job" bij
        on bij.invoice_id = ib.invoice_id
    left join "dw_dev"."processing_tracker"."dim_job" j
        on j.job_id = bij.job_id
    left join "dw_dev"."processing_tracker"."br_job_salespeople" bjsp
        on bjsp.job_id = bij.job_id
    left join "dw_dev"."processing_tracker"."dim_salespeople" sp
        on sp.salespeople_id = bjsp.salespeople_id
    left join "dw_dev"."processing_tracker"."br_job_operation" bjo
        on bjo.job_id = bij.job_id
    left join "dw_dev"."processing_tracker"."dim_operation" op
        on op.operation_id = bjo.operation_id

),

proj_inv as (

    select
        ib.myob_invoice_reference_number,
        ib.xero_invoice_id,
        ib.invoice_id                               as tracker_invoice_id,
        ib.src_sys_id,
        ib.status,
        ib.is_paid,
        ib.src_created_at::date                     as created_date,
        iff.amount_due,
        iff.issue_dt                                as issue_date,
        iff.paid_dt                                 as paid_date,
        p.project_name                              as job,
        'Projects'                                  as business_unit,
        'Commercial'                                as division,
        p.state_as_text                             as state,
        sp.email                                    as sales_email,
        op.email                                    as ops_email,
        2                                           as link_priority
    from inv_base ib
    left join inv_facts iff
        on iff.invoice_sk = ib.invoice_sk
    inner join "dw_dev"."processing_tracker"."br_invoice_project" bip
        on bip.invoice_id = ib.invoice_id
    left join "dw_dev"."processing_tracker"."dim_project" p
        on p.project_id = bip.project_id
    left join "dw_dev"."processing_tracker"."br_project_salespeople" bpsp
        on bpsp.project_id = bip.project_id
    left join "dw_dev"."processing_tracker"."dim_salespeople" sp
        on sp.salespeople_id = bpsp.salespeople_id
    left join "dw_dev"."processing_tracker"."br_project_operation" bpo
        on bpo.project_id = bip.project_id
    left join "dw_dev"."processing_tracker"."dim_operation" op
        on op.operation_id = bpo.operation_id

)

select
    myob_invoice_reference_number,
    xero_invoice_id,
    tracker_invoice_id,
    src_sys_id,
    status,
    is_paid,
    created_date,
    amount_due,
    issue_date,
    paid_date,
    job,
    business_unit,
    division,
    state,
    sales_email,
    ops_email
from (
    select *,
        row_number() over (
            partition by coalesce(myob_invoice_reference_number, xero_invoice_id)
            order by link_priority
        ) as _rn
    from (
        select * from job_inv
        union all
        select * from proj_inv
    )
)
where _rn = 1