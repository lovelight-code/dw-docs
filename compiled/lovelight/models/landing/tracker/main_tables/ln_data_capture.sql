-- ============================================================
-- Model: ln_data_capture
-- Description: Landing-layer view that flattens object_211
--              and its subtables into one record per data_capture.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_211 table
-- ------------------------------------------------------------
o211 as (
    select *
    from landing_tracker.object_211
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_211__field_3056
-- ------------------------------------------------------------
o211f3056 as (
    select
        _dlt_parent_id,
        max(value) as purpose
    from landing_tracker.object_211__field_3056
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o211.id,
    o211.created as src_created_at,
    o211.updated as src_updated_at,
    o211.field_3057 as custom_vic_value,
    o211.field_3058 as custom_nsw_value,
    o211.field_3059 as custom_qld_value,
    o211.field_3060_all_day as created_date_all_day,
    o211.field_3060_date as created_date,
    o211.field_3062 as custom_vic_qty,
    o211.field_3063 as custom_nsw_qty,
    o211.field_3064 as custom_qld_qty,
    o211f3056.purpose as purpose,
    o211._dlt_id as dlt_id,
    o211._dlt_load_id as dlt_load_id,
    o211.created_at as created_at,
    o211.updated_at as updated_at
from o211
left join o211f3056 on o211._dlt_id = o211f3056._dlt_parent_id