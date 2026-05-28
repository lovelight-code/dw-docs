-- ============================================================
-- Model: ln_storage_bay
-- Description: Landing-layer view that flattens object_14
--              and its subtables into one record per storage_bay.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_14 table
-- ------------------------------------------------------------
o14 as (
    select *
    from landing_tracker.object_14
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o14.id,
    o14.created as src_created_at,
    o14.updated as src_updated_at,
    o14.field_178 as blind,
    o14.field_270 as display,
    o14.field_304 as bay_letter,
    o14.field_305 as bay_number,
    o14.field_86 as storage_bay_name,
    o14._dlt_id as dlt_id,
    o14._dlt_load_id as dlt_load_id,
    o14.created_at as created_at,
    o14.updated_at as updated_at
from o14