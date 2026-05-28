-- ============================================================
-- Model: ln_project_pc_status
-- Description: Landing-layer view that flattens object_191
--              and its subtables into one record per project_pc_status.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_191 table
-- ------------------------------------------------------------
o191 as (
    select *
    from landing_tracker.object_191
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o191.id,
    o191.created as src_created_at,
    o191.updated as src_updated_at,
    o191.field_2771 as status,
    o191._dlt_id as dlt_id,
    o191._dlt_load_id as dlt_load_id,
    o191.created_at as created_at,
    o191.updated_at as updated_at
from o191