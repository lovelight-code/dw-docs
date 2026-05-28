-- ============================================================
-- Model: ln_document
-- Description: Landing-layer view that flattens object_22
--              and its subtables into one record per document.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_22 table
-- ------------------------------------------------------------
o22 as (
    select *
    from landing_tracker.object_22
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o22.id,
    o22.created as src_created_at,
    o22.updated as src_updated_at,
    o22.field_1483 as display,
    o22.field_189 as src_sys_id,
    o22.field_190 as file,
    o22.field_1929 as count_job,
    o22.field_192_all_day as created_date_all_day,
    o22.field_192_date as created_date,
    o22.field_1951 as count_of_jobs_on_parent_call_out,
    o22.field_2248 as other_note,
    o22.field_431 as description,
    o22.field_946 as show_installer,
    o22._dlt_id as dlt_id,
    o22._dlt_load_id as dlt_load_id,
    o22.created_at as created_at,
    o22.updated_at as updated_at
from o22