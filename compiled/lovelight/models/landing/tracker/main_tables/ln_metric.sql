-- ============================================================
-- Model: ln_metric
-- Description: Landing-layer view that flattens object_151
--              and its subtables into one record per metric.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_151 table
-- ------------------------------------------------------------
o151 as (
    select *
    from landing_tracker.object_151
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_151__field_2201
-- ------------------------------------------------------------
o151f2201 as (
    select
        _dlt_parent_id,
        max(value) as type
    from landing_tracker.object_151__field_2201
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o151.id,
    o151.created as src_created_at,
    o151.updated as src_updated_at,
    o151.field_2202_all_day as created_at_all_day,
    o151.field_2202_date as created_at_date,
    o151.field_2204 as detail,
    o151f2201.type as type,
    o151._dlt_id as dlt_id,
    o151._dlt_load_id as dlt_load_id,
    o151.created_at as created_at,
    o151.updated_at as updated_at
from o151
left join o151f2201 on o151._dlt_id = o151f2201._dlt_parent_id