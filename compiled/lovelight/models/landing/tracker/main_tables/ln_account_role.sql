-- ============================================================
-- Model: ln_account_role
-- Description: Landing-layer view that flattens object_119
--              and its subtables into one record per account_role.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_119 table
-- ------------------------------------------------------------
o119 as (
    select *
    from landing_tracker.object_119
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o119.id,
    o119.created as src_created_at,
    o119.updated as src_updated_at,
    o119.field_1753_all_day as created_date_all_day,
    o119.field_1753_date as created_date,
    o119.field_1754 as note,
    o119.field_1755 as current,
    o119.field_1756 as created_by,
    o119.field_1768 as position_summary_description,
    o119.field_1769 as src_sys_id,
    o119.field_1823 as deleted,
    o119._dlt_id as dlt_id,
    o119._dlt_load_id as dlt_load_id,
    o119.created_at as created_at,
    o119.updated_at as updated_at
from o119