-- ============================================================
-- Model: ln_project_group_type
-- Description: Landing-layer view that flattens object_196
--              and its subtables into one record per project_group_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_196 table
-- ------------------------------------------------------------
o196 as (
    select *
    from landing_tracker.object_196
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o196.id,
    o196.created as src_created_at,
    o196.updated as src_updated_at,
    o196.field_2810 as type,
    o196._dlt_id as dlt_id,
    o196._dlt_load_id as dlt_load_id,
    o196.created_at as created_at,
    o196.updated_at as updated_at
from o196