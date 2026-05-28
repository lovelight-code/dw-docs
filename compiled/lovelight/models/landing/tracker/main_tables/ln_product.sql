-- ============================================================
-- Model: ln_product
-- Description: Landing-layer view that flattens object_4
--              and its subtables into one record per product.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_4 table
-- ------------------------------------------------------------
o4 as (
    select *
    from landing_tracker.object_4
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_4__field_786
-- ------------------------------------------------------------
o4f786 as (
    select
        _dlt_parent_id,
        max(value) as type
    from landing_tracker.object_4__field_786
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o4.id,
    o4.created as src_created_at,
    o4.updated as src_updated_at,
    o4.field_289 as sort_order,
    o4.field_8 as products_name,
    o4.field_902 as estimate_eligible,
    o4f786.type as type,
    o4._dlt_id as dlt_id,
    o4._dlt_load_id as dlt_load_id,
    o4.created_at as created_at,
    o4.updated_at as updated_at
from o4
left join o4f786 on o4._dlt_id = o4f786._dlt_parent_id