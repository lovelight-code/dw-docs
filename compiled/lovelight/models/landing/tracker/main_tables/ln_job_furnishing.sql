-- ============================================================
-- Model: ln_job_furnishing
-- Description: Landing-layer view that flattens object_175
--              and its subtables into one record per job_furnishing.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_175 table
-- ------------------------------------------------------------
o175 as (
    select *
    from landing_tracker.object_175
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o175.id,
    o175.created as src_created_at,
    o175.updated as src_updated_at,
    o175.field_2512 as job_furnishings_name,
    o175._dlt_id as dlt_id,
    o175._dlt_load_id as dlt_load_id,
    o175.created_at as created_at,
    o175.updated_at as updated_at
from o175