-- ============================================================
-- Model: ln_retention
-- Description: Landing-layer view that flattens object_212
--              and its subtables into one record per retention.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_212 table
-- ------------------------------------------------------------
o212 as (
    select *
    from landing_tracker.object_212
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_212__field_3087
-- ------------------------------------------------------------
o212f3087 as (
    select
        _dlt_parent_id,
        max(value) as type
    from landing_tracker.object_212__field_3087
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o212.id,
    o212.created as src_created_at,
    o212.updated as src_updated_at,
    o212.field_3079 as description,
    o212.field_3080_all_day as date_all_day,
    o212.field_3080_date as date_date,
    o212.field_3085 as value_inc_gst,
    o212f3087.type as type,
    o212._dlt_id as dlt_id,
    o212._dlt_load_id as dlt_load_id,
    o212.created_at as created_at,
    o212.updated_at as updated_at
from o212
left join o212f3087 on o212._dlt_id = o212f3087._dlt_parent_id