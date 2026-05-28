-- ============================================================
-- Model: ln_oh_and_s_incident_report
-- Description: Landing-layer view that flattens object_178
--              and its subtables into one record per oh_and_s_incident_report.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_178 table
-- ------------------------------------------------------------
o178 as (
    select *
    from landing_tracker.object_178
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_178__field_2564
-- ------------------------------------------------------------
o178f2564 as (
    select
        _dlt_parent_id,
        max(value) as accident_location
    from landing_tracker.object_178__field_2564
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_178__field_2567
-- ------------------------------------------------------------
o178f2567 as (
    select
        _dlt_parent_id,
        max(value) as who_was_injured
    from landing_tracker.object_178__field_2567
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_178__field_2570
-- ------------------------------------------------------------
o178f2570 as (
    select
        _dlt_parent_id,
        max(value) as severity_rating
    from landing_tracker.object_178__field_2570
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_178__field_2571
-- ------------------------------------------------------------
o178f2571 as (
    select
        _dlt_parent_id,
        max(value) as type_of_incident
    from landing_tracker.object_178__field_2571
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_178__field_2572
-- ------------------------------------------------------------
o178f2572 as (
    select
        _dlt_parent_id,
        max(value) as weather_condition
    from landing_tracker.object_178__field_2572
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_178__field_2584
-- ------------------------------------------------------------
o178f2584 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_178__field_2584
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o178.id,
    o178.created as src_created_at,
    o178.updated as src_updated_at,
    o178.field_2568_all_day as date_of_incident_all_day,
    o178.field_2568_date as date_of_incident_date,
    o178.field_2569 as does_this_need_to_be_reported_to_worksafe_or_another_entitiy,
    o178.field_2573 as incident_detail,
    o178f2564.accident_location as accident_location,
    o178f2567.who_was_injured as who_was_injured,
    o178f2570.severity_rating as severity_rating,
    o178f2571.type_of_incident as type_of_incident,
    o178f2572.weather_condition as weather_condition,
    o178f2584.status as status,
    o178._dlt_id as dlt_id,
    o178._dlt_load_id as dlt_load_id,
    o178.created_at as created_at,
    o178.updated_at as updated_at
from o178
left join o178f2564 on o178._dlt_id = o178f2564._dlt_parent_id
left join o178f2567 on o178._dlt_id = o178f2567._dlt_parent_id
left join o178f2570 on o178._dlt_id = o178f2570._dlt_parent_id
left join o178f2571 on o178._dlt_id = o178f2571._dlt_parent_id
left join o178f2572 on o178._dlt_id = o178f2572._dlt_parent_id
left join o178f2584 on o178._dlt_id = o178f2584._dlt_parent_id