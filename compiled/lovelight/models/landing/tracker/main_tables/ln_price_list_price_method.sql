-- ============================================================
-- Model: ln_price_list_price_method
-- Description: Landing-layer view that flattens object_186
--              and its subtables into one record per price_list_price_method.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_186 table
-- ------------------------------------------------------------
o186 as (
    select *
    from landing_tracker.object_186
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o186.id,
    o186.created as src_created_at,
    o186.updated as src_updated_at,
    o186.field_2656 as price_list_price_methods_name,
    o186._dlt_id as dlt_id,
    o186._dlt_load_id as dlt_load_id,
    o186.created_at as created_at,
    o186.updated_at as updated_at
from o186