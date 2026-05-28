-- ============================================================
-- Model: ln_oh_and_s_volume_site
-- Description: Landing-layer view that flattens object_165
--              and its subtables into one record per oh_and_s_volume_site.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_165 table
-- ------------------------------------------------------------
o165 as (
    select *
    from landing_tracker.object_165
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o165.id,
    o165.created as src_created_at,
    o165.updated as src_updated_at,
    o165.field_2362 as job_name,
    o165.field_2363 as portal_id,
    o165.field_2364_all_day as created_at_all_day,
    o165.field_2364_date as created_at_date,
    o165.field_2365_city as address_city,
    o165.field_2365_full as address_full,
    o165.field_2365_state as address_state,
    o165.field_2365_street as address_street,
    o165.field_2365_street2 as address_street2,
    o165.field_2365_zip as address_zip,
    o165.field_2430 as site_supervisor,
    o165._dlt_id as dlt_id,
    o165._dlt_load_id as dlt_load_id,
    o165.created_at as created_at,
    o165.updated_at as updated_at
from o165