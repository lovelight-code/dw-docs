-- ============================================================
-- Model: ln_issue_type
-- Description: Landing-layer view that flattens object_133
--              and its subtables into one record per issue_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_133 table
-- ------------------------------------------------------------
o133 as (
    select *
    from landing_tracker.object_133
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o133.id,
    o133.created as src_created_at,
    o133.updated as src_updated_at,
    o133.field_1912 as name,
    o133.field_1925 as sort_order,
    o133._dlt_id as dlt_id,
    o133._dlt_load_id as dlt_load_id,
    o133.created_at as created_at,
    o133.updated_at as updated_at
from o133