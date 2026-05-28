-- ============================================================
-- Model: ln_installer_invoice_item
-- Description: Landing-layer view that flattens object_182
--              and its subtables into one record per installer_invoice_item.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_182 table
-- ------------------------------------------------------------
o182 as (
    select *
    from landing_tracker.object_182
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o182.id,
    o182.created as src_created_at,
    o182.updated as src_updated_at,
    o182.field_2646 as comment,
    o182.field_2679 as quantity,
    o182.field_2680 as billable_value,
    o182.field_2686 as src_sys_id,
    o182.field_2687_all_day as created_date_all_day,
    o182.field_2687_date as created_date,
    o182._dlt_id as dlt_id,
    o182._dlt_load_id as dlt_load_id,
    o182.created_at as created_at,
    o182.updated_at as updated_at
from o182