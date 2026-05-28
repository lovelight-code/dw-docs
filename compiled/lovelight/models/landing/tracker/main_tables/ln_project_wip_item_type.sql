-- ============================================================
-- Model: ln_project_wip_item_type
-- Description: Landing-layer view that flattens object_206
--              and its subtables into one record per project_wip_item_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_206 table
-- ------------------------------------------------------------
o206 as (
    select *
    from landing_tracker.object_206
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o206.id,
    o206.created as src_created_at,
    o206.updated as src_updated_at,
    o206.field_2964 as type,
    o206._dlt_id as dlt_id,
    o206._dlt_load_id as dlt_load_id,
    o206.created_at as created_at,
    o206.updated_at as updated_at
from o206