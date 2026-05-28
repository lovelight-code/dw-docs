-- ============================================================
-- Model: ln_fti_fault_type
-- Description: Landing-layer view that flattens object_145
--              and its subtables into one record per fti_fault_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_145 table
-- ------------------------------------------------------------
o145 as (
    select *
    from landing_tracker.object_145
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o145.id,
    o145.created as src_created_at,
    o145.updated as src_updated_at,
    o145.field_2120 as fault_type,
    o145.field_2123 as sort_order,
    o145._dlt_id as dlt_id,
    o145._dlt_load_id as dlt_load_id,
    o145.created_at as created_at,
    o145.updated_at as updated_at
from o145