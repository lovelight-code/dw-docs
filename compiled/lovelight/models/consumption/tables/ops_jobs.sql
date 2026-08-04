

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
        j.myob_project_task_id,
        j.job_name_prefix,
        j.job_reference_with_development,
        j.quoterite_job_id
    from "dw_dev"."processing_tracker"."dim_job" j
    where j.job_id is not null

),

job_facts as (

    select
        fj.job_sk,
        fj.created_dt,
        fj.completed_dt,
        fj.value_ex_gst,
        fj.designer_commission_amt
    from "dw_dev"."processing_tracker"."fct_job" fj

),

job_status as (

    select job_id, status
    from (
        select
            bjs.job_id,
            js.status,
            row_number() over (partition by bjs.job_id order by js.job_status_id) as rn
        from "dw_dev"."processing_tracker"."br_job_job_status" bjs
        left join "dw_dev"."processing_tracker"."dim_job_status" js
            on bjs.job_status_id = js.job_status_id
    )
    where rn = 1

),

job_sales as (

    select job_id, salesperson, salesperson_myob_id, sales_email, is_reported_sale
    from (
        select
            bjsp.job_id,
            s.full_name              as salesperson,
            s.myob_salesperson_id    as salesperson_myob_id,
            s.email                  as sales_email,
            s.is_reported_sale,
            row_number() over (partition by bjsp.job_id order by s.salespeople_id) as rn
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
            row_number() over (partition by bjo.job_id order by o.operation_id) as rn
        from "dw_dev"."processing_tracker"."br_job_operation" bjo
        left join "dw_dev"."processing_tracker"."dim_operation" o
            on bjo.operation_id = o.operation_id
    )
    where rn = 1

),

job_account as (

    select job_id, client_account
    from (
        select
            bja.job_id,
            a.account_name           as client_account,
            row_number() over (partition by bja.job_id order by a.account_id) as rn
        from "dw_dev"."processing_tracker"."br_job_account" bja
        left join "dw_dev"."processing_tracker"."dim_account" a
            on bja.account_id = a.account_id
    )
    where rn = 1

),

job_contact as (

    select job_id, client_contact
    from (
        select
            bjc.job_id,
            c.display_name           as client_contact,
            row_number() over (partition by bjc.job_id order by c.contact_id) as rn
        from "dw_dev"."processing_tracker"."br_job_client_contact" bjc
        left join "dw_dev"."processing_tracker"."dim_contact" c
            on bjc.contact_id = c.contact_id
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
    jsa.sales_email                              as sales_email,
    jsa.is_reported_sale                         as is_reported_sale,
    jb.myob_project_id                           as myob_project_id,
    jb.myob_project_task_id                      as myob_project_task_id,
    jf.completed_dt                              as completed_date,
    jb.project_as_text                           as project_name,
    jb.job_name_prefix                           as job_name_prefix,
    jb.job_reference_with_development            as job_reference_with_development,
    jb.quoterite_job_id                          as quoterite_job_id,
    jf.designer_commission_amt                   as designer_commission_amt,
    jac.client_account                           as client_account,
    jco.client_contact                           as client_contact,
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
left join job_account jac
    on jb.job_id = jac.job_id
left join job_contact jco
    on jb.job_id = jco.job_id
where lower(js.status) <> 'cancelled'