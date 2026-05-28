

-- ============================================================
-- Model: dim_project
-- Description: Project dimension containing slowly changing descriptive attributes.
-- Source: project (snapshot model)
-- ============================================================

with current as (
    select * from"dw_dev"."history_tracker"."project"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as project_sk,
    id as project_id,
    project_reference,
    project_name,
    project_name_with_id,
    state_as_text,
    project_type_category as project_type,
    prefixed_id,
    prefixed_id_with_dash,
    project_id_for_child_job,
    related_job_business_unit,
    sales_and_ops_team,
    project_status_sort_order,
    project_status_category,
    construction_status_sort_order,
    have_formal_contract,
    po_number,
    project_folder_url,
    address_longitude,
    address_latitude,
    address_street,
    address_street2,
    address_city,
    address_state,
    address_zip,
    address_full,
    myob_project_reference,
    myob_project_task_reference,
    website_development_id,
    'KNACK' as src_sys_cd,
    src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current