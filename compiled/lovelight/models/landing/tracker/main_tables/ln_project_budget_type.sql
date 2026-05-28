-- ============================================================
-- Model: ln_project_budget_type
-- Description: Landing-layer view that flattens object_199
--              and its subtables into one record per project_budget_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_199 table
-- ------------------------------------------------------------
o199 as (
    select *
    from landing_tracker.object_199
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o199.id,
    o199.created as src_created_at,
    o199.updated as src_updated_at,
    o199.field_2894 as project_budget_type_name,
    o199._dlt_id as dlt_id,
    o199._dlt_load_id as dlt_load_id,
    o199.created_at as created_at,
    o199.updated_at as updated_at
from o199