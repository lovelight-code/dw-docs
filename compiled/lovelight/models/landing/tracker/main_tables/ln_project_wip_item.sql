-- ============================================================
-- Model: ln_project_wip_item
-- Description: Landing-layer view that flattens object_205
--              and its subtables into one record per project_wip_item.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_205 table
-- ------------------------------------------------------------
o205 as (
    select *
    from landing_tracker.object_205
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o205.id,
    o205.created as src_created_at,
    o205.updated as src_updated_at,
    o205.field_2952_all_day as created_date_all_day,
    o205.field_2952_date as created_date,
    o205.field_2953 as src_sys_id,
    o205.field_2955 as detail,
    o205._dlt_id as dlt_id,
    o205._dlt_load_id as dlt_load_id,
    o205.created_at as created_at,
    o205.updated_at as updated_at
from o205