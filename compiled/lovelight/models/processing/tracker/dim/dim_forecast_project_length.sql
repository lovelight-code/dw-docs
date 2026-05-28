

-- ============================================================
-- Model: dim_forecast_project_length
-- Description: Forecast project length (project duration) dimension.
-- Source: forecast_project_length (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."forecast_project_length"
    where dbt_valid_to is null
)

select
    md5(id::varchar)                    as forecast_project_length_sk,
    id                                  as forecast_project_length_id,
    description                         as project_duration,
    day,
    sort_order,
    'KNACK'                             as src_sys_cd,
    null                                as src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp                   as proc_created_at,
    current_timestamp                   as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5'               as load_run_id
from current