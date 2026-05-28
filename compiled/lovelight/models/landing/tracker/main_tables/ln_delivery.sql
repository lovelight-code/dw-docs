-- ============================================================
-- Model: ln_delivery
-- Description: Landing-layer view that flattens object_140
--              and its subtables into one record per delivery.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_140 table
-- ------------------------------------------------------------
o140 as (
    select *
    from landing_tracker.object_140
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_140__field_3152
-- ------------------------------------------------------------
o140f3152 as (
    select
        _dlt_parent_id,
        max(value) as delivery_location
    from landing_tracker.object_140__field_3152
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o140.id,
    o140.created as src_created_at,
    o140.updated as src_updated_at,
    o140.field_2024_all_day as start_date_time_all_day,
    o140.field_2024_date as start_date_time_date,
    o140.field_2024_to as start_date_time_to,
    o140.field_2025 as auto_increment,
    o140.field_2026 as start_km_s,
    o140.field_2027 as end_km_s,
    o140.field_2034 as lara,
    o140.field_2035 as geelong,
    o140.field_2036 as warrnambool,
    o140.field_2037 as ballarat,
    o140.field_2038 as bendigo,
    o140.field_2039 as echuca,
    o140.field_2040 as shepparton,
    o140.field_2041 as albury,
    o140.field_2042 as highett,
    o140.field_2043 as bayle,
    o140.field_2044 as traralgon,
    o140.field_2064 as lunch_break,
    o140.field_2489 as total_blind,
    o140.field_2490_all_day as end_date_time_all_day,
    o140.field_2490_date as end_date_time_date,
    o140.field_2491 as total_time,
    o140.field_2492 as lunch,
    o140.field_2548 as fuel_cost,
    o140.field_2549 as service_maintenance_cost,
    o140.field_3065 as bannockburn,
    o140.field_3066 as inverloch,
    o140.field_3154 as note,
    o140f3152.delivery_location as delivery_location,
    o140._dlt_id as dlt_id,
    o140._dlt_load_id as dlt_load_id,
    o140.created_at as created_at,
    o140.updated_at as updated_at
from o140
left join o140f3152 on o140._dlt_id = o140f3152._dlt_parent_id