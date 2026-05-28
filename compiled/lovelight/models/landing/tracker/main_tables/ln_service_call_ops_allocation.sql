-- ============================================================
-- Model: ln_service_call_ops_allocation
-- Description: Landing-layer view that flattens object_217
--              and its subtables into one record per service_call_ops_allocation.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_217 table
-- ------------------------------------------------------------
o217 as (
    select *
    from landing_tracker.object_217
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o217.id,
    o217.created as src_created_at,
    o217.updated as src_updated_at,
    o217._dlt_id as dlt_id,
    o217._dlt_load_id as dlt_load_id,
    o217.created_at as created_at,
    o217.updated_at as updated_at
from o217