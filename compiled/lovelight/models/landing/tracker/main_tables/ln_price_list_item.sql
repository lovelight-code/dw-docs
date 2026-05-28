-- ============================================================
-- Model: ln_price_list_item
-- Description: Landing-layer view that flattens object_183
--              and its subtables into one record per price_list_item.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_183 table
-- ------------------------------------------------------------
o183 as (
    select *
    from landing_tracker.object_183
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o183.id,
    o183.created as src_created_at,
    o183.updated as src_updated_at,
    o183.field_2649 as description,
    o183.field_2659 as product_code,
    o183.field_2660 as item_code,
    o183.field_2661 as item_id,
    o183.field_2668 as price_method_as_text,
    o183._dlt_id as dlt_id,
    o183._dlt_load_id as dlt_load_id,
    o183.created_at as created_at,
    o183.updated_at as updated_at
from o183