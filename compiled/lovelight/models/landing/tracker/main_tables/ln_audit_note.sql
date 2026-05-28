-- ============================================================
-- Model: ln_audit_note
-- Description: Landing-layer view that flattens object_53
--              and its subtables into one record per audit_note.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_53 table
-- ------------------------------------------------------------
o53 as (
    select *
    from landing_tracker.object_53
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_53__field_1666
-- ------------------------------------------------------------
o53f1666 as (
    select
        _dlt_parent_id,
        max(value) as visible_to_installer
    from landing_tracker.object_53__field_1666
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_53__field_1667
-- ------------------------------------------------------------
o53f1667 as (
    select
        _dlt_parent_id,
        max(value) as notify_sales_and_op
    from landing_tracker.object_53__field_1667
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o53.id,
    o53.created as src_created_at,
    o53.updated as src_updated_at,
    o53.field_1320 as auto_increment,
    o53.field_1655 as created_by,
    o53.field_1664_all_day as follow_up_date_all_day,
    o53.field_1664_date as follow_up_date,
    o53.field_1850 as focus_object,
    o53.field_1851 as focus_name,
    o53.field_1995_all_day as remind_me_on_a_day_all_day,
    o53.field_1995_date as remind_me_on_a_day_date,
    o53.field_2287 as is_project_specific,
    o53.field_2580 as job_note_image,
    o53.field_576 as detail,
    o53.field_578_all_day as created_date_all_day,
    o53.field_578_date as created_date,
    o53f1666.visible_to_installer as visible_to_installer,
    o53f1667.notify_sales_and_op as notify_sales_and_op,
    o53._dlt_id as dlt_id,
    o53._dlt_load_id as dlt_load_id,
    o53.created_at as created_at,
    o53.updated_at as updated_at
from o53
left join o53f1666 on o53._dlt_id = o53f1666._dlt_parent_id
left join o53f1667 on o53._dlt_id = o53f1667._dlt_parent_id