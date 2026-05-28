-- ============================================================
-- Model: ln_project_ll_status
-- Description: Landing-layer view that flattens object_193
--              and its subtables into one record per project_ll_status.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_193 table
-- ------------------------------------------------------------
o193 as (
    select *
    from landing_tracker.object_193
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_193__field_2793
-- ------------------------------------------------------------
o193f2793 as (
    select
        _dlt_parent_id,
        max(value) as category
    from landing_tracker.object_193__field_2793
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o193.id,
    o193.created as src_created_at,
    o193.updated as src_updated_at,
    o193.field_2785 as status,
    o193.field_2786 as sort_order,
    o193.field_2794 as emoji,
    o193.field_2795 as display,
    o193f2793.category as category,
    o193._dlt_id as dlt_id,
    o193._dlt_load_id as dlt_load_id,
    o193.created_at as created_at,
    o193.updated_at as updated_at
from o193
left join o193f2793 on o193._dlt_id = o193f2793._dlt_parent_id