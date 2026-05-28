-- ============================================================
-- Model: ln_oh_and_s_hazard
-- Description: Landing-layer view that flattens object_164
--              and its subtables into one record per oh_and_s_hazard.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_164 table
-- ------------------------------------------------------------
o164 as (
    select *
    from landing_tracker.object_164
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o164.id,
    o164.created as src_created_at,
    o164.updated as src_updated_at,
    o164.field_2354 as hazards_name,
    o164.field_2356 as src_sys_id,
    o164.field_2367 as icon_url,
    o164.field_2368 as icon,
    o164._dlt_id as dlt_id,
    o164._dlt_load_id as dlt_load_id,
    o164.created_at as created_at,
    o164.updated_at as updated_at
from o164