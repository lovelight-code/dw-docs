

-- ============================================================
-- Model: dim_business_unit
-- Description: Business unit dimension containing slowly changing descriptive attributes.
-- Source: business_unit (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."business_unit"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as business_unit_sk,
    id as business_unit_id,
    business_unit_name,
    job_prefix,
    'KNACK' as src_sys_cd,
    null as src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current