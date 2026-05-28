-- ============================================================
-- Model: ln_job_status
-- Description: Landing-layer view that flattens object_28
--              and its subtables into one record per job_status.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_28 table
-- ------------------------------------------------------------
o28 as (
    select *
    from landing_tracker.object_28
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o28.id,
    o28.created as src_created_at,
    o28.updated as src_updated_at,
    o28.field_1651 as status_with_icon,
    o28.field_1668 as status_icon,
    o28.field_1828 as complete,
    o28.field_241 as status,
    o28.field_243 as status_display,
    o28.field_244 as number,
    o28.field_246 as status_available_from_order,
    o28.field_2985 as src_sys_id,
    o28.field_484 as is_complete,
    o28._dlt_id as dlt_id,
    o28._dlt_load_id as dlt_load_id,
    o28.created_at as created_at,
    o28.updated_at as updated_at
from o28