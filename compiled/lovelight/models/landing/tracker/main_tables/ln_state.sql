-- ============================================================
-- Model: ln_state
-- Description: Landing-layer view that flattens object_107
--              and its subtables into one record per state.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_107 table
-- ------------------------------------------------------------
o107 as (
    select *
    from landing_tracker.object_107
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o107.id,
    o107.created as src_created_at,
    o107.updated as src_updated_at,
    o107.field_1557 as state_name,
    o107.field_3134 as state_first_letter,
    o107._dlt_id as dlt_id,
    o107._dlt_load_id as dlt_load_id,
    o107.created_at as created_at,
    o107.updated_at as updated_at
from o107