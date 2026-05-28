-- ============================================================
-- Model: ln_project_construction_status
-- Description: Landing-layer view that flattens object_157
--              and its subtables into one record per project_construction_status.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_157 table
-- ------------------------------------------------------------
o157 as (
    select *
    from landing_tracker.object_157
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o157.id,
    o157.created as src_created_at,
    o157.updated as src_updated_at,
    o157.field_2257 as name,
    o157.field_2258 as sort_order,
    o157.field_2762 as definition,
    o157.field_2787 as emoji,
    o157.field_2788 as emoji_and_name,
    o157._dlt_id as dlt_id,
    o157._dlt_load_id as dlt_load_id,
    o157.created_at as created_at,
    o157.updated_at as updated_at
from o157