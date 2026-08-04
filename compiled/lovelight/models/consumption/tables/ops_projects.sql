

with proj_facts as (

    select
        fp.project_sk,
        fp.date_first_marked_compete
    from "dw_dev"."processing_tracker"."fct_project" fp

),

proj_ll_status as (

    select
        bps.project_id,
        ps.status_display            as ll_status_display
    from "dw_dev"."processing_tracker"."br_project_project_ll_status" bps
    left join "dw_dev"."processing_tracker"."dim_project_ll_status" ps
        on bps.project_ll_status_id = ps.project_ll_status_id

)

select
    p.project_sk,
    p.project_id,
    p.src_sys_cd,
    p.src_sys_id,
    p.project_reference,
    p.project_name,
    p.project_name_with_id,
    p.prefixed_id,
    p.project_type,
    p.project_status_category                  as status,
    p.project_status_sort_order,
    p.construction_status_sort_order,
    p.related_job_business_unit                as business_unit,
    p.sales_and_ops_team,
    p.state_as_text                            as state,
    p.address_street,
    p.address_street2,
    p.address_city,
    p.address_state,
    p.address_zip,
    p.address_full,
    p.address_latitude,
    p.address_longitude,
    p.have_formal_contract,
    p.po_number,
    p.project_folder_url,
    p.website_development_id,
    p.myob_project_reference,
    p.myob_project_task_reference,
    mp.project_key                             as myob_project_key,
    mp.project_status                          as myob_project_status,
    mp.customer                                as myob_customer,
    mp.branch                                  as myob_branch,
    mp.contract_type,
    mp.start_date,
    mp.end_date,
    mp.expected_margin,
    pf.date_first_marked_compete,
    pls.ll_status_display,
    p.src_created_at,
    p.src_updated_at

from "dw_dev"."processing_tracker"."dim_project" p
left join "dw_dev"."processing_myob"."dim_project" mp
    on mp.project_id = p.myob_project_reference
left join proj_facts pf
    on pf.project_sk = p.project_sk
left join proj_ll_status pls
    on pls.project_id = p.project_id