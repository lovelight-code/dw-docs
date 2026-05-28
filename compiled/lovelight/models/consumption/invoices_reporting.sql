

-- ===============================================================
-- Model: invoices_reporting
-- Description:
--   Invoice reporting table replicating legacy tracker.v_invoices_reporting.
--   Enriches Tracker invoices with MYOB/Xero financial data and adds
--   job/project context (reference, business unit, division, state,
--   sales and ops emails). Deduplicates on invoice_number.
--
-- External dependencies (define as dbt sources when available):
--   - lovelight_xero.invoices
--   - myob_advanced.v_invoices
-- ===============================================================

with xero_inv as (

    -- TODO: define lovelight_xero as a dbt source
    select *
    from lovelight_xero.invoices
    where date < '2023-04-01'

),

myob_inv as (

    -- TODO: define myob_advanced as a dbt source
    select *
    from myob_advanced.v_invoices
    where report_date >= '2023-04-01'
      and status not in ('Credit Hold')

),

inv_base as (

    select
        invoice_id,
        src_sys_id,
        status,
        myob_invoice_reference_number,
        xero_invoice_id,
        src_created_at
    from "dw_dev"."processing_tracker"."dim_invoice"

),

inv_facts as (

    select
        fi.invoice_sk,
        fi.amount_due,
        fi.issue_dt,
        fi.created_dt
    from "dw_dev"."processing_tracker"."fct_invoice" fi

),

all_inv as (

    select
        ib.invoice_id                                                           as id,
        ib.src_sys_id                                                           as src_sys_id,
        coalesce(mi.report_date, xi.date, iff.issue_dt)::date                  as report_date,
        iff.issue_dt::date                                                      as system_report_date,
        ib.src_created_at::date                                                 as created_date,
        coalesce(mi.ex_gst_amount, xi.subtotal, iff.amount_due)                as value_ex_gst,
        lower(ib.status)                                                        as status,
        coalesce(mi.referencenbr, xi.invoicenumber)                            as invoice_number,
        coalesce(ib.myob_invoice_reference_number, ib.xero_invoice_id)         as system_invoice_number,
        mi.division                                                             as myob_division,
        mi.state                                                                as myob_state,
        row_number() over (
            partition by coalesce(mi.referencenbr, xi.invoicenumber)
            order by ib.src_created_at
        )                                                                       as rank
    from inv_base ib
    left join inv_facts iff
        on ib.invoice_id = iff.invoice_sk
    left join xero_inv xi
        on xi.invoicenumber = ib.xero_invoice_id
    left join myob_inv mi
        on mi.referencenbr = ib.myob_invoice_reference_number

),

all_inv_deduped as (

    select *
    from all_inv
    where (rank = 1 and invoice_number is not null)
       or invoice_number is null

),

job_inv as (

    select
        ai.id,
        ai.src_sys_id,
        ai.report_date,
        ai.system_report_date,
        ai.created_date,
        ai.value_ex_gst,
        ai.status,
        ai.invoice_number,
        ai.system_invoice_number,
        ai.myob_division,
        ai.myob_state,
        j.job_name                                                              as reference,
        j.business_unit,
        case
            when j.business_unit in ('Projects', 'Apartments') then 'Commercial'
            else j.business_unit
        end                                                                     as division,
        j.state_code                                                            as state,
        sp.email                                                                as sales_email,
        op.email                                                                as ops_email
    from all_inv_deduped ai
    inner join "dw_dev"."processing_tracker"."br_invoice_job" bij
        on ai.id = bij.invoice_id
    left join "dw_dev"."processing_tracker"."dim_job" j
        on bij.job_id = j.job_id
    left join "dw_dev"."processing_tracker"."br_job_salespeople" bjsp
        on bij.job_id = bjsp.job_id
    left join "dw_dev"."processing_tracker"."dim_salespeople" sp
        on bjsp.salespeople_id = sp.salespeople_id
    left join "dw_dev"."processing_tracker"."br_job_operation" bjo
        on bij.job_id = bjo.job_id
    left join "dw_dev"."processing_tracker"."dim_operation" op
        on bjo.operation_id = op.operation_id

),

proj_inv as (

    select
        ai.id,
        ai.src_sys_id,
        ai.report_date,
        ai.system_report_date,
        ai.created_date,
        ai.value_ex_gst,
        ai.status,
        ai.invoice_number,
        ai.system_invoice_number,
        ai.myob_division,
        ai.myob_state,
        p.project_name                                                          as reference,
        'Projects'                                                              as business_unit,
        'Commercial'                                                            as division,
        p.state_as_text                                                         as state,
        sp.email                                                                as sales_email,
        op.email                                                                as ops_email
    from all_inv_deduped ai
    inner join "dw_dev"."processing_tracker"."br_invoice_project" bip
        on ai.id = bip.invoice_id
    left join "dw_dev"."processing_tracker"."dim_project" p
        on bip.project_id = p.project_id
    left join "dw_dev"."processing_tracker"."br_project_salespeople" bpsp
        on bip.project_id = bpsp.project_id
    left join "dw_dev"."processing_tracker"."dim_salespeople" sp
        on bpsp.salespeople_id = sp.salespeople_id
    left join "dw_dev"."processing_tracker"."br_project_operation" bpo
        on bip.project_id = bpo.project_id
    left join "dw_dev"."processing_tracker"."dim_operation" op
        on bpo.operation_id = op.operation_id

),

all_invoices as (

    select
        *,
        row_number() over (partition by invoice_number) as rank
    from (
        select * from job_inv
        union all
        select * from proj_inv
    )

)

select
    id,
    'Tracker'                                                                   as application,
    src_sys_id,
    report_date,
    system_report_date,
    date_trunc('month', report_date) = date_trunc('month', system_report_date) as month_match,
    created_date,
    coalesce(value_ex_gst, 0)                                                  as value_ex_gst,
    status,
    invoice_number,
    system_invoice_number,
    reference,
    business_unit,
    division,
    myob_division,
    division = myob_division                                                    as division_match,
    state,
    myob_state,
    state = myob_state                                                          as state_match,
    sales_email,
    ops_email
from all_invoices
where (rank = 1 and invoice_number is not null)
   or invoice_number is null