

-- ===============================================================
-- Model: invoices
-- Description:
--   Unified invoices table replicating legacy tracker.v_invoices.
--   Returns invoices linked to either a job or project, excluding
--   invoices where the associated job has a cancelled status.
-- ===============================================================

with inv_base as (

    select
        invoice_sk,
        invoice_id,
        src_sys_id,
        status,
        state,
        business_unit,
        is_paid,
        invoice_number
    from "dw_dev"."processing_tracker"."dim_invoice"

),

inv_facts as (

    select
        fi.invoice_sk,
        fi.amount_due,
        fi.created_dt,
        fi.issue_dt,
        fi.due_dt
    from "dw_dev"."processing_tracker"."fct_invoice" fi

),

inv_job as (

    select
        bij.invoice_id,
        j.job_id,
        j.job_name
    from "dw_dev"."processing_tracker"."br_invoice_job" bij
    left join "dw_dev"."processing_tracker"."dim_job" j
        on bij.job_id = j.job_id

),

inv_project as (

    select
        bip.invoice_id,
        p.project_id,
        p.project_name_with_id,
        p.state_as_text
    from "dw_dev"."processing_tracker"."br_invoice_project" bip
    left join "dw_dev"."processing_tracker"."dim_project" p
        on bip.project_id = p.project_id

),

inv_job_status as (

    select
        bijs.invoice_id,
        js.status as job_status
    from "dw_dev"."processing_tracker"."br_invoice_job_status" bijs
    left join "dw_dev"."processing_tracker"."dim_job_status" js
        on bijs.job_status_id = js.job_status_id

)

select
        ib.src_sys_id                                                    as src_sys_id,
        ib.invoice_id                                                    as id,
    case
        when ij.job_id is null then ip.project_name_with_id
        else ij.job_name
    end                                                              as job,
    ib.status                                                        as status,
    case
        when ij.job_id is null then ip.state_as_text
        else ib.state
    end                                                              as state,
    case
        when ij.job_id is null then 'Projects'
        else ib.business_unit
    end                                                              as business_unit,
    iff.amount_due                                                   as value_ex_gst,
    iff.created_dt                                                   as created_date,
    iff.issue_dt                                                     as issue_date,
    iff.due_dt                                                       as due_date,
    ib.is_paid                                                       as ispaid,
    ib.invoice_number                                                as invoice_number
from inv_base ib
left join inv_facts iff
    on ib.invoice_sk = iff.invoice_sk
left join inv_job ij
    on ib.invoice_id = ij.invoice_id
left join inv_project ip
    on ib.invoice_id = ip.invoice_id
left join inv_job_status ijs
    on ib.invoice_id = ijs.invoice_id
where (ij.job_id is not null or ip.project_id is not null)
  and (ijs.job_status is null or lower(ijs.job_status) <> 'cancelled')