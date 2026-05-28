-- ============================================================
-- Model: ln_job_state
-- Description: Landing-layer view that flattens object_108
--              and its subtables into one record per job_state.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_108 table
-- ------------------------------------------------------------
o108 as (
    select *
    from landing_tracker.object_108
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o108.id,
    o108.created as src_created_at,
    o108.updated as src_updated_at,
    o108.field_1566 as job_active_state_name,
    o108._dlt_id as dlt_id,
    o108._dlt_load_id as dlt_load_id,
    o108.created_at as created_at,
    o108.updated_at as updated_at
from o108