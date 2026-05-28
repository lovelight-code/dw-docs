

-- ============================================================
-- Model: dim_job
-- Description: Job dimension containing slowly changing descriptive attributes.
-- Source: job (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."job"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as job_sk,
    id as job_id,
    job_reference,
    job_reference_with_development,
    job_name_prefix,
    job_name,
    job_name_suffix,
    project_as_text,
    development_purchase_type,
    status_as_text,
    status_change_date,
    quote_rite_job_id as quoterite_job_id,
    business_unit,
    state as state_code,
    business_contact as account_name,
    customer_contact_first_name as contact_name,
    most_recent_installer as installer_name,
    invoicing_exemption as is_invoicing_exempted,
    amount_invoiced,
    amount_scheduled,
    amount_missing,
    myob_project_id,
    myob_project_task_id,
    null as site_id,
    'KNACK' as src_sys_cd,
    src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current