-- ============================================================
-- Model: ln_state_division
-- Description: Landing-layer view that flattens object_110
--              and its subtables into one record per state_division.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_110 table
-- ------------------------------------------------------------
o110 as (
    select *
    from landing_tracker.object_110
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o110.id,
    o110.created as src_created_at,
    o110.updated as src_updated_at,
    o110.field_1574 as name,
    o110._dlt_id as dlt_id,
    o110._dlt_load_id as dlt_load_id,
    o110.created_at as created_at,
    o110.updated_at as updated_at
from o110