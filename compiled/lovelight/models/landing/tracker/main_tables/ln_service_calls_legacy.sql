-- ============================================================
-- Model: ln_service_calls_legacy
-- Description: Landing-layer view that flattens object_63
--              and its subtables into one record per service_calls_legacy.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_63 table
-- ------------------------------------------------------------
o63 as (
    select *
    from landing_tracker.object_63
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_63__field_757
-- ------------------------------------------------------------
o63f757 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_63__field_757
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_63__field_764
-- ------------------------------------------------------------
o63f764 as (
    select
        _dlt_parent_id,
        max(value) as reporting_category
    from landing_tracker.object_63__field_764
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o63.id,
    o63.created as src_created_at,
    o63.updated as src_updated_at,
    o63.field_1391 as state,
    o63.field_1600 as business_unit,
    o63.field_754 as what_s_required,
    o63.field_756 as chargeable,
    o63.field_758_all_day as date_booked_all_day,
    o63.field_758_date as date_booked_date,
    o63.field_759 as src_sys_id,
    o63.field_760_all_day as created_date_all_day,
    o63.field_760_date as created_date,
    o63.field_765 as value_ex_gst,
    o63.field_854 as previous_status,
    o63.field_855 as has_status_changed,
    o63.field_856_all_day as status_change_date_all_day,
    o63.field_856_date as status_change_date,
    o63.field_857 as days_in_status,
    o63f757.status as status,
    o63f764.reporting_category as reporting_category,
    o63._dlt_id as dlt_id,
    o63._dlt_load_id as dlt_load_id,
    o63.created_at as created_at,
    o63.updated_at as updated_at
from o63
left join o63f757 on o63._dlt_id = o63f757._dlt_parent_id
left join o63f764 on o63._dlt_id = o63f764._dlt_parent_id