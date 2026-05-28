-- ============================================================
-- Model: ln_notification
-- Description: Landing-layer view that flattens object_127
--              and its subtables into one record per notification.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_127 table
-- ------------------------------------------------------------
o127 as (
    select *
    from landing_tracker.object_127
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o127.id,
    o127.created as src_created_at,
    o127.updated as src_updated_at,
    o127.field_1861 as object_key,
    o127.field_1863 as description,
    o127.field_1866_all_day as created_all_day,
    o127.field_1866_date as created_date,
    o127.field_1868 as target_url,
    o127.field_1869 as read,
    o127._dlt_id as dlt_id,
    o127._dlt_load_id as dlt_load_id,
    o127.created_at as created_at,
    o127.updated_at as updated_at
from o127