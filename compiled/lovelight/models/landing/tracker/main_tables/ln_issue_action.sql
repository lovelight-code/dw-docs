-- ============================================================
-- Model: ln_issue_action
-- Description: Landing-layer view that flattens object_135
--              and its subtables into one record per issue_action.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_135 table
-- ------------------------------------------------------------
o135 as (
    select *
    from landing_tracker.object_135
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o135.id,
    o135.created as src_created_at,
    o135.updated as src_updated_at,
    o135.field_1934 as action_text_for_connected_record_use,
    o135.field_1938 as summary,
    o135.field_1939 as sort_order,
    o135._dlt_id as dlt_id,
    o135._dlt_load_id as dlt_load_id,
    o135.created_at as created_at,
    o135.updated_at as updated_at
from o135