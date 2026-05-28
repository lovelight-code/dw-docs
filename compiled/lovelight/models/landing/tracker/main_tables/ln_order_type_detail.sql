-- ============================================================
-- Model: ln_order_type_detail
-- Description: Landing-layer view that flattens object_41
--              and its subtables into one record per order_type_detail.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_41 table
-- ------------------------------------------------------------
o41 as (
    select *
    from landing_tracker.object_41
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o41.id,
    o41.created as src_created_at,
    o41.updated as src_updated_at,
    o41.field_435 as detail,
    o41.field_440 as order_detail,
    o41.field_445 as sort_order,
    o41._dlt_id as dlt_id,
    o41._dlt_load_id as dlt_load_id,
    o41.created_at as created_at,
    o41.updated_at as updated_at
from o41