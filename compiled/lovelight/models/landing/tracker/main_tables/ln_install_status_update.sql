-- ============================================================
-- Model: ln_install_status_update
-- Description: Landing-layer view that flattens object_190
--              and its subtables into one record per install_status_update.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_190 table
-- ------------------------------------------------------------
o190 as (
    select *
    from landing_tracker.object_190
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o190.id,
    o190.created as src_created_at,
    o190.updated as src_updated_at,
    o190.field_2742 as installer_status,
    o190.field_2743_all_day as created_at_all_day,
    o190.field_2743_date as created_at_date,
    o190.field_2747_all_day as measure_date_all_day,
    o190.field_2747_date as measure_date,
    o190.field_2748_all_day as install_date_all_day,
    o190.field_2748_date as install_date,
    o190.field_2749 as installer_s_note,
    o190.field_2751 as auto_increment,
    o190.field_2759_all_day as created_date_all_day,
    o190.field_2759_date as created_date,
    o190._dlt_id as dlt_id,
    o190._dlt_load_id as dlt_load_id,
    o190.created_at as created_at,
    o190.updated_at as updated_at
from o190