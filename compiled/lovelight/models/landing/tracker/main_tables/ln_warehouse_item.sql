-- ============================================================
-- Model: ln_warehouse_item
-- Description: Landing-layer view that flattens object_86
--              and its subtables into one record per warehouse_item.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_86 table
-- ------------------------------------------------------------
o86 as (
    select *
    from landing_tracker.object_86
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_86__field_1056
-- ------------------------------------------------------------
o86f1056 as (
    select
        _dlt_parent_id,
        max(value) as type
    from landing_tracker.object_86__field_1056
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_86__field_1099
-- ------------------------------------------------------------
o86f1099 as (
    select
        _dlt_parent_id,
        max(value) as safety_stock_flag
    from landing_tracker.object_86__field_1099
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o86.id,
    o86.created as src_created_at,
    o86.updated as src_updated_at,
    o86.field_1038 as warehouse_items_name,
    o86.field_1052 as auto_increment,
    o86.field_1053_all_day as date_time_updated_all_day,
    o86.field_1053_date as date_time_updated_date,
    o86.field_1054_all_day as date_time_created_all_day,
    o86.field_1054_date as date_time_created_date,
    o86.field_1055 as safety_stock_level_par_level,
    o86.field_1096 as total_in_inventory,
    o86.field_1100 as calc_pct_of_inventory_for_stock_flag,
    o86f1056.type as type,
    o86f1099.safety_stock_flag as safety_stock_flag,
    o86._dlt_id as dlt_id,
    o86._dlt_load_id as dlt_load_id,
    o86.created_at as created_at,
    o86.updated_at as updated_at
from o86
left join o86f1056 on o86._dlt_id = o86f1056._dlt_parent_id
left join o86f1099 on o86._dlt_id = o86f1099._dlt_parent_id