-- ============================================================
-- Model: ln_conversion_probability
-- Description: Landing-layer view that flattens object_125
--              and its subtables into one record per conversion_probability.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_125 table
-- ------------------------------------------------------------
o125 as (
    select *
    from landing_tracker.object_125
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o125.id,
    o125.created as src_created_at,
    o125.updated as src_updated_at,
    o125.field_1844 as description,
    o125.field_1845 as percentage,
    o125._dlt_id as dlt_id,
    o125._dlt_load_id as dlt_load_id,
    o125.created_at as created_at,
    o125.updated_at as updated_at
from o125