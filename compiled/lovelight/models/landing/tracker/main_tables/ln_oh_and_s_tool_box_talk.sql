-- ============================================================
-- Model: ln_oh_and_s_tool_box_talk
-- Description: Landing-layer view that flattens object_168
--              and its subtables into one record per oh_and_s_tool_box_talk.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_168 table
-- ------------------------------------------------------------
o168 as (
    select *
    from landing_tracker.object_168
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_168__field_2425
-- ------------------------------------------------------------
o168f2425 as (
    select
        _dlt_parent_id,
        max(value) as tool_box_talks_type
    from landing_tracker.object_168__field_2425
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o168.id,
    o168.created as src_created_at,
    o168.updated as src_updated_at,
    o168.field_2421 as tool_box_talks_name,
    o168.field_2422 as src_sys_id,
    o168.field_2424_all_day as booked_in_date_all_day,
    o168.field_2424_date as booked_in_date,
    o168.field_2424_to as booked_in_date_to,
    o168.field_2426 as tool_box_scope,
    o168.field_2435 as deleted,
    o168.field_2437 as g_cal_event_id,
    o168.field_2438 as g_cal_update_required,
    o168f2425.tool_box_talks_type as tool_box_talks_type,
    o168._dlt_id as dlt_id,
    o168._dlt_load_id as dlt_load_id,
    o168.created_at as created_at,
    o168.updated_at as updated_at
from o168
left join o168f2425 on o168._dlt_id = o168f2425._dlt_parent_id