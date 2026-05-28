-- ============================================================
-- Model: ln_activity
-- Description: Landing-layer view that flattens object_114
--              and its subtables into one record per activity.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_114 table
-- ------------------------------------------------------------
o114 as (
    select *
    from landing_tracker.object_114
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_114__field_1688
-- ------------------------------------------------------------
o114f1688 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_114__field_1688
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_114__field_1711
-- ------------------------------------------------------------
o114f1711 as (
    select
        _dlt_parent_id,
        max(value) as call_outcome
    from landing_tracker.object_114__field_1711
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_114__field_1743
-- ------------------------------------------------------------
o114f1743 as (
    select
        _dlt_parent_id,
        max(value) as meeting_outcome
    from landing_tracker.object_114__field_1743
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_114__field_2156
-- ------------------------------------------------------------
o114f2156 as (
    select
        _dlt_parent_id,
        max(value) as site_visit_type
    from landing_tracker.object_114__field_2156
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o114.id,
    o114.created as src_created_at,
    o114.updated as src_updated_at,
    o114.field_1686_all_day as created_date_all_day,
    o114.field_1686_date as created_date,
    o114.field_1687_all_day as date_and_time_event_user_entry_all_day,
    o114.field_1687_date as date_and_time_event_user_entry_date,
    o114.field_1687_to as date_and_time_event_user_entry_to,
    o114.field_1691 as description_outcome,
    o114.field_1694 as src_sys_id,
    o114.field_1696 as created_by,
    o114.field_1707_all_day as date_and_time_user_entry_all_day,
    o114.field_1707_date as date_and_time_user_entry_date,
    o114.field_1708_all_day as date_and_amp_time_display_option_entered_by_user_all_day,
    o114.field_1708_date as date_and_amp_time_display_option_entered_by_user_date,
    o114.field_1709_all_day as date_display_all_day,
    o114.field_1709_date as date_display_date,
    o114.field_1710 as date_and_time_display,
    o114.field_1714_all_day as status_change_date_all_day,
    o114.field_1714_date as status_change_date,
    o114.field_1947 as outcome,
    o114.field_2162 as confirmed,
    o114.field_2369 as summary_display_ok,
    o114.field_2370 as summary_display_overdue,
    o114.field_2371 as summary_display,
    o114.field_2463 as assign_to_creator,
    o114f1688.status as status,
    o114f1711.call_outcome as call_outcome,
    o114f1743.meeting_outcome as meeting_outcome,
    o114f2156.site_visit_type as site_visit_type,
    o114._dlt_id as dlt_id,
    o114._dlt_load_id as dlt_load_id,
    o114.created_at as created_at,
    o114.updated_at as updated_at
from o114
left join o114f1688 on o114._dlt_id = o114f1688._dlt_parent_id
left join o114f1711 on o114._dlt_id = o114f1711._dlt_parent_id
left join o114f1743 on o114._dlt_id = o114f1743._dlt_parent_id
left join o114f2156 on o114._dlt_id = o114f2156._dlt_parent_id