-- ============================================================
-- Model: ln_price_list_product
-- Description: Landing-layer view that flattens object_184
--              and its subtables into one record per price_list_product.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_184 table
-- ------------------------------------------------------------
o184 as (
    select *
    from landing_tracker.object_184
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o184.id,
    o184.created as src_created_at,
    o184.updated as src_updated_at,
    o184.field_2652 as product,
    o184.field_2655 as product_code,
    o184._dlt_id as dlt_id,
    o184._dlt_load_id as dlt_load_id,
    o184.created_at as created_at,
    o184.updated_at as updated_at
from o184