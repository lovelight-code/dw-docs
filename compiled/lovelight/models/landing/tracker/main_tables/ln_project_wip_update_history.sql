-- ============================================================
-- Model: ln_project_wip_update_history
-- Description: Landing-layer view that flattens object_208
--              and its subtables into one record per project_wip_update_history.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_208 table
-- ------------------------------------------------------------
o208 as (
    select *
    from landing_tracker.object_208
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o208.id,
    o208.created as src_created_at,
    o208.updated as src_updated_at,
    o208.field_2988 as auto_increment,
    o208.field_2991 as latest_update,
    o208.field_2995 as pc_assessment,
    o208.field_2996 as pc_date,
    o208.field_3003_all_day as created_date_all_day,
    o208.field_3003_date as created_date,
    o208.field_3004 as previous_update,
    o208.field_3005 as project_type,
    o208.field_3006 as is_handover_complete,
    o208.field_3007 as handover_status,
    o208.field_3008 as project_status_sort_order,
    o208.field_3009 as project_id,
    o208.field_3010 as project_status_category,
    o208.field_3011 as operation,
    o208.field_3012 as pc_status,
    o208.field_3013 as project_status,
    o208.field_3014 as construction_status,
    o208.field_3019 as state,
    o208._dlt_id as dlt_id,
    o208._dlt_load_id as dlt_load_id,
    o208.created_at as created_at,
    o208.updated_at as updated_at
from o208