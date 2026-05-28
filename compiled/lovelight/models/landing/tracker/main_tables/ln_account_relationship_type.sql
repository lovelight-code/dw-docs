-- ============================================================
-- Model: ln_account_relationship_type
-- Description: Landing-layer view that flattens object_123
--              and its subtables into one record per account_relationship_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_123 table
-- ------------------------------------------------------------
o123 as (
    select *
    from landing_tracker.object_123
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o123.id,
    o123.created as src_created_at,
    o123.updated as src_updated_at,
    o123.field_1788 as relationship,
    o123.field_1789 as parent_account,
    o123.field_1790 as child_account,
    o123.field_1797 as count_parent_usage,
    o123.field_1798 as count_child_usage,
    o123.field_1799 as sum_total_usage,
    o123._dlt_id as dlt_id,
    o123._dlt_load_id as dlt_load_id,
    o123.created_at as created_at,
    o123.updated_at as updated_at
from o123