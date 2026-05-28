-- ============================================================
-- Model: ln_image
-- Description: Landing-layer view that flattens object_58
--              and its subtables into one record per image.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_58 table
-- ------------------------------------------------------------
o58 as (
    select *
    from landing_tracker.object_58
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o58.id,
    o58.created as src_created_at,
    o58.updated as src_updated_at,
    o58.field_1544 as description,
    o58.field_1928 as count_job,
    o58.field_1952 as count_of_jobs_on_parent_call_out,
    o58.field_643 as image,
    o58.field_645 as image_id,
    o58._dlt_id as dlt_id,
    o58._dlt_load_id as dlt_load_id,
    o58.created_at as created_at,
    o58.updated_at as updated_at
from o58