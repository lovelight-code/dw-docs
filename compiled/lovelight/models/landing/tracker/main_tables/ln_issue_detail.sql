-- ============================================================
-- Model: ln_issue_detail
-- Description: Landing-layer view that flattens object_134
--              and its subtables into one record per issue_detail.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_134 table
-- ------------------------------------------------------------
o134 as (
    select *
    from landing_tracker.object_134
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o134.id,
    o134.created as src_created_at,
    o134.updated as src_updated_at,
    o134.field_1913 as detail,
    o134.field_1926 as sort_order,
    o134.field_1937 as summary,
    o134._dlt_id as dlt_id,
    o134._dlt_load_id as dlt_load_id,
    o134.created_at as created_at,
    o134.updated_at as updated_at
from o134