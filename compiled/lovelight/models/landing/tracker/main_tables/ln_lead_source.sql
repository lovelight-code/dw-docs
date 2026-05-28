-- ============================================================
-- Model: ln_lead_source
-- Description: Landing-layer view that flattens object_83
--              and its subtables into one record per lead_source.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_83 table
-- ------------------------------------------------------------
o83 as (
    select *
    from landing_tracker.object_83
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o83.id,
    o83.created as src_created_at,
    o83.updated as src_updated_at,
    o83.field_1382 as sort_order,
    o83.field_966 as lead_source,
    o83._dlt_id as dlt_id,
    o83._dlt_load_id as dlt_load_id,
    o83.created_at as created_at,
    o83.updated_at as updated_at
from o83