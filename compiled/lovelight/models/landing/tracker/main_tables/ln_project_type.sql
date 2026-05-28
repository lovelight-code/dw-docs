-- ============================================================
-- Model: ln_project_type
-- Description: Landing-layer view that flattens object_194
--              and its subtables into one record per project_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_194 table
-- ------------------------------------------------------------
o194 as (
    select *
    from landing_tracker.object_194
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o194.id,
    o194.created as src_created_at,
    o194.updated as src_updated_at,
    o194.field_2798 as type,
    o194.field_2799 as qualifying_question_who_will_be_invoiced,
    o194._dlt_id as dlt_id,
    o194._dlt_load_id as dlt_load_id,
    o194.created_at as created_at,
    o194.updated_at as updated_at
from o194