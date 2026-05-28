-- ============================================================
-- Model: ln_excluded_swp_lead_domain
-- Description: Landing-layer view that flattens object_154
--              and its subtables into one record per excluded_swp_lead_domain.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_154 table
-- ------------------------------------------------------------
o154 as (
    select *
    from landing_tracker.object_154
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o154.id,
    o154.created as src_created_at,
    o154.updated as src_updated_at,
    o154.field_2228 as domain,
    o154._dlt_id as dlt_id,
    o154._dlt_load_id as dlt_load_id,
    o154.created_at as created_at,
    o154.updated_at as updated_at
from o154