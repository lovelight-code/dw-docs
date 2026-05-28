-- ============================================================
-- Model: ln_budget
-- Description: Landing-layer view that flattens object_141
--              and its subtables into one record per budget.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_141 table
-- ------------------------------------------------------------
o141 as (
    select *
    from landing_tracker.object_141
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_141__field_2031
-- ------------------------------------------------------------
o141f2031 as (
    select
        _dlt_parent_id,
        max(value) as type
    from landing_tracker.object_141__field_2031
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o141.id,
    o141.created as src_created_at,
    o141.updated as src_updated_at,
    o141.field_2030 as auto_increment,
    o141.field_2032_all_day as month_all_day,
    o141.field_2032_date as month_date,
    o141.field_2033 as amount,
    o141f2031.type as type,
    o141._dlt_id as dlt_id,
    o141._dlt_load_id as dlt_load_id,
    o141.created_at as created_at,
    o141.updated_at as updated_at
from o141
left join o141f2031 on o141._dlt_id = o141f2031._dlt_parent_id