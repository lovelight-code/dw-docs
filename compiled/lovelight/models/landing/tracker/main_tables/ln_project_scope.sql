-- ============================================================
-- Model: ln_project_scope
-- Description: Landing-layer view that flattens object_181
--              and its subtables into one record per project_scope.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_181 table
-- ------------------------------------------------------------
o181 as (
    select *
    from landing_tracker.object_181
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o181.id,
    o181.created as src_created_at,
    o181.updated as src_updated_at,
    o181.field_2615 as package_name,
    o181.field_2618 as package_description,
    o181.field_2619 as count_of_job,
    o181.field_2622 as src_sys_id,
    o181._dlt_id as dlt_id,
    o181._dlt_load_id as dlt_load_id,
    o181.created_at as created_at,
    o181.updated_at as updated_at
from o181