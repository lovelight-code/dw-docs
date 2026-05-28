-- ============================================================
-- Model: ln_action
-- Description: Landing-layer view that flattens object_136
--              and its subtables into one record per action.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_136 table
-- ------------------------------------------------------------
o136 as (
    select *
    from landing_tracker.object_136
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o136.id,
    o136.created as src_created_at,
    o136.updated as src_updated_at,
    o136.field_1923 as actions_name,
    o136._dlt_id as dlt_id,
    o136._dlt_load_id as dlt_load_id,
    o136.created_at as created_at,
    o136.updated_at as updated_at
from o136