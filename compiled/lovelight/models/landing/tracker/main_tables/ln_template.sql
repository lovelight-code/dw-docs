-- ============================================================
-- Model: ln_template
-- Description: Landing-layer view that flattens object_60
--              and its subtables into one record per template.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_60 table
-- ------------------------------------------------------------
o60 as (
    select *
    from landing_tracker.object_60
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o60.id,
    o60.created as src_created_at,
    o60.updated as src_updated_at,
    o60.field_702 as change_log,
    o60.field_703 as version,
    o60.field_704 as file,
    o60.field_705_all_day as last_updated_all_day,
    o60.field_705_date as last_updated_date,
    o60.field_712 as name,
    o60._dlt_id as dlt_id,
    o60._dlt_load_id as dlt_load_id,
    o60.created_at as created_at,
    o60.updated_at as updated_at
from o60