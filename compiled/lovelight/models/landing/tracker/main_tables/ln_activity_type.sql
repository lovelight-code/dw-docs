-- ============================================================
-- Model: ln_activity_type
-- Description: Landing-layer view that flattens object_115
--              and its subtables into one record per activity_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_115 table
-- ------------------------------------------------------------
o115 as (
    select *
    from landing_tracker.object_115
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o115.id,
    o115.created as src_created_at,
    o115.updated as src_updated_at,
    o115.field_1693 as activity,
    o115.field_1772 as display_name,
    o115.field_1773 as published,
    o115.field_1774 as order,
    o115.field_1775 as show_field,
    o115._dlt_id as dlt_id,
    o115._dlt_load_id as dlt_load_id,
    o115.created_at as created_at,
    o115.updated_at as updated_at
from o115