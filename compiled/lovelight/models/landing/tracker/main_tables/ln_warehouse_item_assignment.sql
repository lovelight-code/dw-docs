-- ============================================================
-- Model: ln_warehouse_item_assignment
-- Description: Landing-layer view that flattens object_87
--              and its subtables into one record per warehouse_item_assignment.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_87 table
-- ------------------------------------------------------------
o87 as (
    select *
    from landing_tracker.object_87
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_87__field_1079
-- ------------------------------------------------------------
o87f1079 as (
    select
        _dlt_parent_id,
        max(value) as inherited_type
    from landing_tracker.object_87__field_1079
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o87.id,
    o87.created as src_created_at,
    o87.updated as src_updated_at,
    o87.field_1044 as auto_increment,
    o87.field_1045_all_day as date_time_created_all_day,
    o87.field_1045_date as date_time_created_date,
    o87.field_1046_all_day as date_time_updated_all_day,
    o87.field_1046_date as date_time_updated_date,
    o87.field_1047_all_day as date_time_checked_out_all_day,
    o87.field_1047_date as date_time_checked_out_date,
    o87.field_1050 as active,
    o87.field_1058 as quantity,
    o87.field_1069 as display,
    o87.field_1070 as negative_flip,
    o87.field_1071 as deduct_flag,
    o87.field_1078 as positive_flip,
    o87.field_1097 as inherited_safety_stock_level,
    o87f1079.inherited_type as inherited_type,
    o87._dlt_id as dlt_id,
    o87._dlt_load_id as dlt_load_id,
    o87.created_at as created_at,
    o87.updated_at as updated_at
from o87
left join o87f1079 on o87._dlt_id = o87f1079._dlt_parent_id