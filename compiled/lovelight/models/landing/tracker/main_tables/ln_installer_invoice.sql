-- ============================================================
-- Model: ln_installer_invoice
-- Description: Landing-layer view that flattens object_188
--              and its subtables into one record per installer_invoice.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_188 table
-- ------------------------------------------------------------
o188 as (
    select *
    from landing_tracker.object_188
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o188.id,
    o188.created as src_created_at,
    o188.updated as src_updated_at,
    o188.field_2703_all_day as date_all_day,
    o188.field_2703_date as date_date,
    o188.field_2703_to as date_to,
    o188.field_2705 as src_sys_id,
    o188.field_2706 as total_eg_gst,
    o188._dlt_id as dlt_id,
    o188._dlt_load_id as dlt_load_id,
    o188.created_at as created_at,
    o188.updated_at as updated_at
from o188