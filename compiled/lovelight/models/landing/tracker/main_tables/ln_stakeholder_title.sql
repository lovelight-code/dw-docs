-- ============================================================
-- Model: ln_stakeholder_title
-- Description: Landing-layer view that flattens object_131
--              and its subtables into one record per stakeholder_title.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_131 table
-- ------------------------------------------------------------
o131 as (
    select *
    from landing_tracker.object_131
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o131.id,
    o131.created as src_created_at,
    o131.updated as src_updated_at,
    o131.field_1897 as stakeholder_titles_name,
    o131._dlt_id as dlt_id,
    o131._dlt_load_id as dlt_load_id,
    o131.created_at as created_at,
    o131.updated_at as updated_at
from o131