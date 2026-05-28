-- ============================================================
-- Model: ln_suppliers_product
-- Description: Landing-layer view that flattens object_104
--              and its subtables into one record per suppliers_product.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_104 table
-- ------------------------------------------------------------
o104 as (
    select *
    from landing_tracker.object_104
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o104.id,
    o104.created as src_created_at,
    o104.updated as src_updated_at,
    o104._dlt_id as dlt_id,
    o104._dlt_load_id as dlt_load_id,
    o104.created_at as created_at,
    o104.updated_at as updated_at
from o104