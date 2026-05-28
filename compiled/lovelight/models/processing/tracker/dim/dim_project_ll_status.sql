

-- ============================================================
-- Model: dim_project_ll_status
-- Description: Project LL Status dimension containing slowly changing descriptive attributes.
-- Source: project_ll (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."project_ll_status"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as project_ll_status_sk,
    id as project_ll_status_id,
    sort_order as number,
    status as status_display,
    category,
    'KNACK' as src_sys_cd,
    null as src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current