-- ============================================================
-- Model: ln_invoicing_structure
-- Description: Landing-layer view that flattens object_126
--              and its subtables into one record per invoicing_structure.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_126 table
-- ------------------------------------------------------------
o126 as (
    select *
    from landing_tracker.object_126
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o126.id,
    o126.created as src_created_at,
    o126.updated as src_updated_at,
    o126.field_1855 as invoicing_structures_name,
    o126.field_1856 as paragraph_text,
    o126.field_1877 as invoicing_split,
    o126.field_1901 as sort_order,
    o126._dlt_id as dlt_id,
    o126._dlt_load_id as dlt_load_id,
    o126.created_at as created_at,
    o126.updated_at as updated_at
from o126