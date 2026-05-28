-- ============================================================
-- Model: ln_action_item
-- Description: Landing-layer view that flattens object_209
--              and its subtables into one record per action_item.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_209 table
-- ------------------------------------------------------------
o209 as (
    select *
    from landing_tracker.object_209
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_209__field_3026
-- ------------------------------------------------------------
o209f3026 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_209__field_3026
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o209.id,
    o209.created as src_created_at,
    o209.updated as src_updated_at,
    o209.field_3020 as detail,
    o209.field_3021 as src_sys_id,
    o209.field_3022_all_day as created_date_all_day,
    o209.field_3022_date as created_date,
    o209.field_3024_all_day as due_date_all_day,
    o209.field_3024_date as due_date,
    o209.field_3025_all_day as sort_date_all_day,
    o209.field_3025_date as sort_date,
    o209.field_3027 as to_do_counter,
    o209.field_3031_all_day as done_date_all_day,
    o209.field_3031_date as done_date,
    o209.field_3158 as completed_note,
    o209.field_3159 as note,
    o209f3026.status as status,
    o209._dlt_id as dlt_id,
    o209._dlt_load_id as dlt_load_id,
    o209.created_at as created_at,
    o209.updated_at as updated_at
from o209
left join o209f3026 on o209._dlt_id = o209f3026._dlt_parent_id