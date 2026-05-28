

-- ============================================================
-- Model: dim_job_status
-- Description: Job Status dimension containing slowly changing descriptive attributes.
-- Source: job_status (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."job_status"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as job_status_sk,
    id as job_status_id,
    number,
    status,
    status_icon,
    status_with_icon,
    status_display,
    status_available_from_order as is_available_from_order,
    is_complete,
    complete,
    'KNACK' as src_sys_cd,
    src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current