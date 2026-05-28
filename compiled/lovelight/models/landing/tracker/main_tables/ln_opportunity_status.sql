-- ============================================================
-- Model: ln_opportunity_status
-- Description: Landing-layer view that flattens object_124
--              and its subtables into one record per opportunity_status.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_124 table
-- ------------------------------------------------------------
o124 as (
    select *
    from landing_tracker.object_124
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o124.id,
    o124.created as src_created_at,
    o124.updated as src_updated_at,
    o124.field_1829 as opportunity_statuses_name,
    o124.field_1830 as completed,
    o124.field_1832 as number,
    o124._dlt_id as dlt_id,
    o124._dlt_load_id as dlt_load_id,
    o124.created_at as created_at,
    o124.updated_at as updated_at
from o124