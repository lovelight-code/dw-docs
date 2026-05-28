-- ============================================================
-- Model: ln_slack_channel
-- Description: Landing-layer view that flattens object_170
--              and its subtables into one record per slack_channel.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_170 table
-- ------------------------------------------------------------
o170 as (
    select *
    from landing_tracker.object_170
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o170.id,
    o170.created as src_created_at,
    o170.updated as src_updated_at,
    o170.field_2449 as name,
    o170.field_2450 as src_sys_id,
    o170._dlt_id as dlt_id,
    o170._dlt_load_id as dlt_load_id,
    o170.created_at as created_at,
    o170.updated_at as updated_at
from o170