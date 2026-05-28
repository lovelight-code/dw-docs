-- ============================================================
-- Model: ln_action_item_template
-- Description: Landing-layer view that flattens object_214
--              and its subtables into one record per action_item_template.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_214 table
-- ------------------------------------------------------------
o214 as (
    select *
    from landing_tracker.object_214
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_214__field_3114
-- ------------------------------------------------------------
o214f3114 as (
    select
        _dlt_parent_id,
        max(value) as template_name
    from landing_tracker.object_214__field_3114
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o214.id,
    o214.created as src_created_at,
    o214.updated as src_updated_at,
    o214.field_3120 as detail,
    o214.field_3121 as action_item_template_id,
    o214f3114.template_name as template_name,
    o214._dlt_id as dlt_id,
    o214._dlt_load_id as dlt_load_id,
    o214.created_at as created_at,
    o214.updated_at as updated_at
from o214
left join o214f3114 on o214._dlt_id = o214f3114._dlt_parent_id