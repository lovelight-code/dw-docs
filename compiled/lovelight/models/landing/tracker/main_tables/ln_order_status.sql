-- ============================================================
-- Model: ln_order_status
-- Description: Landing-layer view that flattens object_43
--              and its subtables into one record per order_status.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_43 table
-- ------------------------------------------------------------
o43 as (
    select *
    from landing_tracker.object_43
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o43.id,
    o43.created as src_created_at,
    o43.updated as src_updated_at,
    o43.field_437 as status,
    o43.field_438 as sort_order,
    o43.field_601 as short_status,
    o43._dlt_id as dlt_id,
    o43._dlt_load_id as dlt_load_id,
    o43.created_at as created_at,
    o43.updated_at as updated_at
from o43