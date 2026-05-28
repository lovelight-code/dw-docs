-- ============================================================
-- Model: ln_stakeholder
-- Description: Landing-layer view that flattens object_130
--              and its subtables into one record per stakeholder.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_130 table
-- ------------------------------------------------------------
o130 as (
    select *
    from landing_tracker.object_130
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o130.id,
    o130.created as src_created_at,
    o130.updated as src_updated_at,
    o130.field_1888 as src_sys_id,
    o130.field_1894_all_day as created_date_all_day,
    o130.field_1894_date as created_date,
    o130.field_1895 as created_by,
    o130.field_1896 as note,
    o130.field_1899 as display,
    o130.field_2630 as contact_account_separator,
    o130._dlt_id as dlt_id,
    o130._dlt_load_id as dlt_load_id,
    o130.created_at as created_at,
    o130.updated_at as updated_at
from o130