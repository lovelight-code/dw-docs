-- ============================================================
-- Model: ln_lead_conversion_type
-- Description: Landing-layer view that flattens object_150
--              and its subtables into one record per lead_conversion_type.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_150 table
-- ------------------------------------------------------------
o150 as (
    select *
    from landing_tracker.object_150
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o150.id,
    o150.created as src_created_at,
    o150.updated as src_updated_at,
    o150.field_2195 as conversion_type,
    o150.field_2196 as src_sys_id,
    o150.field_2198 as quote_creation_form_mapping,
    o150.field_2199 as sort_order,
    o150._dlt_id as dlt_id,
    o150._dlt_load_id as dlt_load_id,
    o150.created_at as created_at,
    o150.updated_at as updated_at
from o150