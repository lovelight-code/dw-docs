-- ============================================================
-- Model: ln_project_wip
-- Description: Landing-layer view that flattens object_204
--              and its subtables into one record per project_wip.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_204 table
-- ------------------------------------------------------------
o204 as (
    select *
    from landing_tracker.object_204
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o204.id,
    o204.created as src_created_at,
    o204.updated as src_updated_at,
    o204.field_2946_all_day as created_date_all_day,
    o204.field_2946_date as created_date,
    o204.field_2947_all_day as meeting_date_all_day,
    o204.field_2947_date as meeting_date,
    o204.field_2967 as is_complete,
    o204.field_2968 as src_sys_id,
    o204.field_2969 as display,
    o204.field_3000_all_day as next_meeting_date_all_day,
    o204.field_3000_date as next_meeting_date,
    o204._dlt_id as dlt_id,
    o204._dlt_load_id as dlt_load_id,
    o204.created_at as created_at,
    o204.updated_at as updated_at
from o204