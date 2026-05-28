-- ============================================================
-- Model: ln_fti_fault_detail
-- Description: Landing-layer view that flattens object_146
--              and its subtables into one record per fti_fault_detail.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_146 table
-- ------------------------------------------------------------
o146 as (
    select *
    from landing_tracker.object_146
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o146.id,
    o146.created as src_created_at,
    o146.updated as src_updated_at,
    o146.field_2128 as fault_number,
    o146.field_2132 as display,
    o146.field_2299 as remake,
    o146.field_2300 as fti,
    o146._dlt_id as dlt_id,
    o146._dlt_load_id as dlt_load_id,
    o146.created_at as created_at,
    o146.updated_at as updated_at
from o146