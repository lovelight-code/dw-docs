-- ============================================================
-- Model: ln_business_unit
-- Description: Landing-layer view that flattens object_153
--              and its subtables into one record per business_unit.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_153 table
-- ------------------------------------------------------------
o153 as (
    select *
    from landing_tracker.object_153
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o153.id,
    o153.created as src_created_at,
    o153.updated as src_updated_at,
    o153.field_2225 as business_unit_name,
    o153.field_2227 as job_prefix,
    o153._dlt_id as dlt_id,
    o153._dlt_load_id as dlt_load_id,
    o153.created_at as created_at,
    o153.updated_at as updated_at
from o153