-- ============================================================
-- Model: ln_division
-- Description: Landing-layer view that flattens object_109
--              and its subtables into one record per division.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_109 table
-- ------------------------------------------------------------
o109 as (
    select *
    from landing_tracker.object_109
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o109.id,
    o109.created as src_created_at,
    o109.updated as src_updated_at,
    o109.field_1569 as division_name,
    o109._dlt_id as dlt_id,
    o109._dlt_load_id as dlt_load_id,
    o109.created_at as created_at,
    o109.updated_at as updated_at
from o109