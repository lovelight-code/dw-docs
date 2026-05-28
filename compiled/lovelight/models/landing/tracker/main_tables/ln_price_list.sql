-- ============================================================
-- Model: ln_price_list
-- Description: Landing-layer view that flattens object_187
--              and its subtables into one record per price_list.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_187 table
-- ------------------------------------------------------------
o187 as (
    select *
    from landing_tracker.object_187
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o187.id,
    o187.created as src_created_at,
    o187.updated as src_updated_at,
    o187.field_2665 as currency,
    o187.field_2666 as auto_increment,
    o187.field_2667 as display,
    o187.field_2674_all_day as effective_date_all_day,
    o187.field_2674_date as effective_date,
    o187.field_2675 as is_current,
    o187.field_2683 as item_code,
    o187._dlt_id as dlt_id,
    o187._dlt_load_id as dlt_load_id,
    o187.created_at as created_at,
    o187.updated_at as updated_at
from o187