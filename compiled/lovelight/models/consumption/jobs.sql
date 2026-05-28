

-- ===============================================================
-- Model: jobs
-- Description:
--   Unified jobs table replicating legacy tracker.v_jobs.
--   Returns non-cancelled Tracker jobs with linked status, salesperson, and operations person attributes for reporting.
-- ===============================================================

with jobs_base as (

    select
        j.job_sk,
        j.job_id,
        j.src_sys_id,
        j.state_code,
        j.business_unit,
        j.job_name,
        j.job_reference,
        j.status_change_date,
        j.is_invoicing_exempted,
        j.amount_invoiced,
        j.amount_scheduled,
        j.amount_missing,
        j.project_as_text,
        j.myob_project_id,
        j.myob_project_task_id
    from "dw_dev"."processing_tracker"."dim_job" j
    where j.job_id is not null

),

job_facts as (

    select
        fj.job_sk,
        fj.created_dt,
        fj.completed_dt,
        fj.value_ex_gst
    from "dw_dev"."processing_tracker"."fct_job" fj

),

job_status as (

    select job_id, status
    from (
        select
            bjs.job_id,
            js.status,
            row_number() over (partition by bjs.job_id order by bjs.job_id) as rn
        from "dw_dev"."processing_tracker"."br_job_job_status" bjs
        left join "dw_dev"."processing_tracker"."dim_job_status" js
            on bjs.job_status_id = js.job_status_id
    )
    where rn = 1

),

job_sales as (

    select job_id, salesperson, salesperson_myob_id
    from (
        select
            bjsp.job_id,
            s.full_name as salesperson,
            s.myob_salesperson_id as salesperson_myob_id,
            row_number() over (partition by bjsp.job_id order by bjsp.job_id) as rn
        from "dw_dev"."processing_tracker"."br_job_salespeople" bjsp
        left join "dw_dev"."processing_tracker"."dim_salespeople" s
            on bjsp.salespeople_id = s.salespeople_id
    )
    where rn = 1

),

job_ops as (

    select job_id, full_name, email
    from (
        select
            bjo.job_id,
            o.full_name,
            o.email,
            row_number() over (partition by bjo.job_id order by bjo.job_id) as rn
        from "dw_dev"."processing_tracker"."br_job_operation" bjo
        left join "dw_dev"."processing_tracker"."dim_operation" o
            on bjo.operation_id = o.operation_id
    )
    where rn = 1

)

select
    jb.job_id                                    as id,
    jb.src_sys_id                                as src_sys_id,
    jb.state_code                                as state,
    jb.business_unit                             as business_unit,
    jb.job_name                                  as name,
    jb.job_reference                             as apt,
    jb.status_change_date                        as status_change_date,
    jf.value_ex_gst                              as value_ex_gst,
    jb.is_invoicing_exempted                     as is_exempt,
    jb.amount_invoiced                           as invoiced,
    jb.amount_scheduled                          as scheduled,
    jb.amount_missing                            as missing,
    jf.created_dt                                as created_date,
    js.status                                    as status,
    jsa.salesperson                              as salesperson,
    jsa.salesperson_myob_id                      as salesperson_myob_id,
    jb.myob_project_id                           as myob_project_id,
    jb.myob_project_task_id                      as myob_project_task_id,
    jf.completed_dt                              as completed_date,
    jb.project_as_text                           as project_name,
    jo.full_name                                 as ops_person,
    jo.email                                     as ops_person_email
from jobs_base jb
left join job_facts jf
    on jb.job_sk = jf.job_sk
left join job_status js
    on jb.job_id = js.job_id
left join job_sales jsa
    on jb.job_id = jsa.job_id
left join job_ops jo
    on jb.job_id = jo.job_id
where lower(coalesce(js.status, '')) <> 'cancelled'