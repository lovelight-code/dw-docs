-- ============================================================
-- Model: ln_job_order_status
-- Description: Landing-layer view that flattens object_207
--              and its subtables into one record per job_order_status.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_207 table
-- ------------------------------------------------------------
o207 as (
    select *
    from landing_tracker.object_207
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o207.id,
    o207.created as src_created_at,
    o207.updated as src_updated_at,
    o207.field_2973 as status,
    o207.field_2975 as sort_order,
    o207._dlt_id as dlt_id,
    o207._dlt_load_id as dlt_load_id,
    o207.created_at as created_at,
    o207.updated_at as updated_at
from o207