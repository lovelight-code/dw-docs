-- ============================================================
-- Model: ln_order_type
-- Description: Landing-layer view that flattens object_33
--              and its subtables into one record per order_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_33 table
-- ------------------------------------------------------------
o33 as (
    select *
    from landing_tracker.object_33
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o33.id,
    o33.created as src_created_at,
    o33.updated as src_updated_at,
    o33.field_321 as order_type,
    o33.field_322 as sort_order,
    o33.field_324 as order_suffix,
    o33._dlt_id as dlt_id,
    o33._dlt_load_id as dlt_load_id,
    o33.created_at as created_at,
    o33.updated_at as updated_at
from o33