-- ============================================================
-- Model: ln_forecast_project_length
-- Description: Landing-layer view that flattens object_129
--              and its subtables into one record per forecast_project_length.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_129 table
-- ------------------------------------------------------------
o129 as (
    select *
    from landing_tracker.object_129
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o129.id,
    o129.created as src_created_at,
    o129.updated as src_updated_at,
    o129.field_1875 as description,
    o129.field_1876 as day,
    o129.field_1886 as sort_order,
    o129._dlt_id as dlt_id,
    o129._dlt_load_id as dlt_load_id,
    o129.created_at as created_at,
    o129.updated_at as updated_at
from o129