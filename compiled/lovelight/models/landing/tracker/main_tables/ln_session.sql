-- ============================================================
-- Model: ln_session
-- Description: Landing-layer view that flattens object_138
--              and its subtables into one record per session.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_138 table
-- ------------------------------------------------------------
o138 as (
    select *
    from landing_tracker.object_138
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o138.id,
    o138.created as src_created_at,
    o138.updated as src_updated_at,
    o138.field_1988_all_day as created_at_all_day,
    o138.field_1988_date as created_at_date,
    o138.field_1989 as created_by,
    o138._dlt_id as dlt_id,
    o138._dlt_load_id as dlt_load_id,
    o138.created_at as created_at,
    o138.updated_at as updated_at
from o138