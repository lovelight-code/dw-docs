-- ============================================================
-- Model: ln_document_type
-- Description: Landing-layer view that flattens object_32
--              and its subtables into one record per document_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_32 table
-- ------------------------------------------------------------
o32 as (
    select *
    from landing_tracker.object_32
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o32.id,
    o32.created as src_created_at,
    o32.updated as src_updated_at,
    o32.field_1950 as visible_to_installer,
    o32.field_300 as type,
    o32.field_303 as display_order,
    o32._dlt_id as dlt_id,
    o32._dlt_load_id as dlt_load_id,
    o32.created_at as created_at,
    o32.updated_at as updated_at
from o32