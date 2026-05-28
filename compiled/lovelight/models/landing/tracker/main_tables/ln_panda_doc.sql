-- ============================================================
-- Model: ln_panda_doc
-- Description: Landing-layer view that flattens object_113
--              and its subtables into one record per panda_doc.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_113 table
-- ------------------------------------------------------------
o113 as (
    select *
    from landing_tracker.object_113
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_113__field_1672
-- ------------------------------------------------------------
o113f1672 as (
    select
        _dlt_parent_id,
        max(value) as template
    from landing_tracker.object_113__field_1672
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o113.id,
    o113.created as src_created_at,
    o113.updated as src_updated_at,
    o113.field_1671 as version_number,
    o113.field_1673 as cat_data_csv_file,
    o113f1672.template as template,
    o113._dlt_id as dlt_id,
    o113._dlt_load_id as dlt_load_id,
    o113.created_at as created_at,
    o113.updated_at as updated_at
from o113
left join o113f1672 on o113._dlt_id = o113f1672._dlt_parent_id