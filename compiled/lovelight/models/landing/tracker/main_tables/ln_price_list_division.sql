-- ============================================================
-- Model: ln_price_list_division
-- Description: Landing-layer view that flattens object_185
--              and its subtables into one record per price_list_division.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_185 table
-- ------------------------------------------------------------
o185 as (
    select *
    from landing_tracker.object_185
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o185.id,
    o185.created as src_created_at,
    o185.updated as src_updated_at,
    o185.field_2654 as division_name,
    o185._dlt_id as dlt_id,
    o185._dlt_load_id as dlt_load_id,
    o185.created_at as created_at,
    o185.updated_at as updated_at
from o185