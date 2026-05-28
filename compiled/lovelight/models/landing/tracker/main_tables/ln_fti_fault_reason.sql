-- ============================================================
-- Model: ln_fti_fault_reason
-- Description: Landing-layer view that flattens object_147
--              and its subtables into one record per fti_fault_reason.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_147 table
-- ------------------------------------------------------------
o147 as (
    select *
    from landing_tracker.object_147
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o147.id,
    o147.created as src_created_at,
    o147.updated as src_updated_at,
    o147.field_2129 as reason,
    o147._dlt_id as dlt_id,
    o147._dlt_load_id as dlt_load_id,
    o147.created_at as created_at,
    o147.updated_at as updated_at
from o147