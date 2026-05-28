-- ============================================================
-- Model: ln_account_contact_title
-- Description: Landing-layer view that flattens object_120
--              and its subtables into one record per account_contact_title.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_120 table
-- ------------------------------------------------------------
o120 as (
    select *
    from landing_tracker.object_120
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o120.id,
    o120.created as src_created_at,
    o120.updated as src_updated_at,
    o120.field_1750 as job_titles_name,
    o120.field_1752 as frequency,
    o120._dlt_id as dlt_id,
    o120._dlt_load_id as dlt_load_id,
    o120.created_at as created_at,
    o120.updated_at as updated_at
from o120