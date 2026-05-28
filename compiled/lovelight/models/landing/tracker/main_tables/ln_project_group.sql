-- ============================================================
-- Model: ln_project_group
-- Description: Landing-layer view that flattens object_180
--              and its subtables into one record per project_group.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_180 table
-- ------------------------------------------------------------
o180 as (
    select *
    from landing_tracker.object_180
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_180__field_2710
-- ------------------------------------------------------------
o180f2710 as (
    select
        _dlt_parent_id,
        max(value) as scheduling_status
    from landing_tracker.object_180__field_2710
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_180__field_2837
-- ------------------------------------------------------------
o180f2837 as (
    select
        _dlt_parent_id,
        max(value) as batch_order_delivery_location
    from landing_tracker.object_180__field_2837
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o180.id,
    o180.created as src_created_at,
    o180.updated as src_updated_at,
    o180.field_2600 as name,
    o180.field_2604 as count_of_job,
    o180.field_2605 as num_blind,
    o180.field_2621 as src_sys_id,
    o180.field_2738 as description,
    o180.field_2817 as value,
    o180.field_2828 as batch_order_order_form_copied_to_file_object,
    o180.field_2838_all_day as batch_order_ordered_date_all_day,
    o180.field_2838_date as batch_order_ordered_date,
    o180.field_2843_all_day as created_date_all_day,
    o180.field_2843_date as created_date,
    o180f2710.scheduling_status as scheduling_status,
    o180f2837.batch_order_delivery_location as batch_order_delivery_location,
    o180._dlt_id as dlt_id,
    o180._dlt_load_id as dlt_load_id,
    o180.created_at as created_at,
    o180.updated_at as updated_at
from o180
left join o180f2710 on o180._dlt_id = o180f2710._dlt_parent_id
left join o180f2837 on o180._dlt_id = o180f2837._dlt_parent_id