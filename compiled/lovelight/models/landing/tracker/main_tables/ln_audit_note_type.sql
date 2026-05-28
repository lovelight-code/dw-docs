-- ============================================================
-- Model: ln_audit_note_type
-- Description: Landing-layer view that flattens object_112
--              and its subtables into one record per audit_note_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_112 table
-- ------------------------------------------------------------
o112 as (
    select *
    from landing_tracker.object_112
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o112.id,
    o112.created as src_created_at,
    o112.updated as src_updated_at,
    o112.field_1657 as record_type,
    o112.field_1658 as icon,
    o112.field_1699 as icon_url,
    o112.field_2284 as is_project_specific,
    o112._dlt_id as dlt_id,
    o112._dlt_load_id as dlt_load_id,
    o112.created_at as created_at,
    o112.updated_at as updated_at
from o112