-- ============================================================
-- Model: ln_account_relationship
-- Description: Landing-layer view that flattens object_122
--              and its subtables into one record per account_relationship.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_122 table
-- ------------------------------------------------------------
o122 as (
    select *
    from landing_tracker.object_122
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o122.id,
    o122.created as src_created_at,
    o122.updated as src_updated_at,
    o122.field_1785 as src_sys_id,
    o122.field_1793 as note,
    o122.field_1794 as child_s_lifetime_value,
    o122._dlt_id as dlt_id,
    o122._dlt_load_id as dlt_load_id,
    o122.created_at as created_at,
    o122.updated_at as updated_at
from o122