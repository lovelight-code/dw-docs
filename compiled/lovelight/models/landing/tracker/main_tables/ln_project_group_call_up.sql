-- ============================================================
-- Model: ln_project_group_call_up
-- Description: Landing-layer view that flattens object_189
--              and its subtables into one record per project_group_call_up.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_189 table
-- ------------------------------------------------------------
o189 as (
    select *
    from landing_tracker.object_189
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_189__field_2718
-- ------------------------------------------------------------
o189f2718 as (
    select
        _dlt_parent_id,
        max(value) as scheduling_status
    from landing_tracker.object_189__field_2718
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_189__field_2720
-- ------------------------------------------------------------
o189f2720 as (
    select
        _dlt_parent_id,
        max(value) as type
    from landing_tracker.object_189__field_2720
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o189.id,
    o189.created as src_created_at,
    o189.updated as src_updated_at,
    o189.field_2714_all_day as site_available_all_day,
    o189.field_2714_date as site_available_date,
    o189.field_2715 as note,
    o189.field_2716 as auto_increment,
    o189.field_2717_all_day as created_date_all_day,
    o189.field_2717_date as created_date,
    o189.field_2721 as estimated_installer_hour,
    o189.field_2722 as estimate_explanation,
    o189.field_2723 as installer_days_required,
    o189.field_2724 as work_days_available,
    o189.field_2725_all_day as site_deadline_all_day,
    o189.field_2725_date as site_deadline_date,
    o189.field_2726 as display,
    o189.field_2728 as date_range,
    o189f2718.scheduling_status as scheduling_status,
    o189f2720.type as type,
    o189._dlt_id as dlt_id,
    o189._dlt_load_id as dlt_load_id,
    o189.created_at as created_at,
    o189.updated_at as updated_at
from o189
left join o189f2718 on o189._dlt_id = o189f2718._dlt_parent_id
left join o189f2720 on o189._dlt_id = o189f2720._dlt_parent_id