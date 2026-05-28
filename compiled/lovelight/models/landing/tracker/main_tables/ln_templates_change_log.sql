-- ============================================================
-- Model: ln_templates_change_log
-- Description: Landing-layer view that flattens object_61
--              and its subtables into one record per templates_change_log.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_61 table
-- ------------------------------------------------------------
o61 as (
    select *
    from landing_tracker.object_61
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o61.id,
    o61.created as src_created_at,
    o61.updated as src_updated_at,
    o61.field_707 as version,
    o61.field_708 as file,
    o61.field_709 as change_log,
    o61.field_710_all_day as change_date_all_day,
    o61.field_710_date as change_date,
    o61._dlt_id as dlt_id,
    o61._dlt_load_id as dlt_load_id,
    o61.created_at as created_at,
    o61.updated_at as updated_at
from o61