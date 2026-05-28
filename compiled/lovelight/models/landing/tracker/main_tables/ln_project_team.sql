-- ============================================================
-- Model: ln_project_team
-- Description: Landing-layer view that flattens object_202
--              and its subtables into one record per project_team.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_202 table
-- ------------------------------------------------------------
o202 as (
    select *
    from landing_tracker.object_202
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o202.id,
    o202.created as src_created_at,
    o202.updated as src_updated_at,
    o202.field_2926 as team_name,
    o202.field_2927 as auto_increment,
    o202.field_2928_all_day as created_date_all_day,
    o202.field_2928_date as created_date,
    o202.field_2929_all_day as next_wip_meeting_all_day,
    o202.field_2929_date as next_wip_meeting_date,
    o202.field_2930_all_day as last_wip_meeting_all_day,
    o202.field_2930_date as last_wip_meeting_date,
    o202.field_2966 as image,
    o202._dlt_id as dlt_id,
    o202._dlt_load_id as dlt_load_id,
    o202.created_at as created_at,
    o202.updated_at as updated_at
from o202