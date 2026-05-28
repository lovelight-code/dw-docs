-- ============================================================
-- Model: ln_development
-- Description: Landing-layer view that flattens object_21
--              and its subtables into one record per development.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_21 table
-- ------------------------------------------------------------
o21 as (
    select *
    from landing_tracker.object_21
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_21__field_424
-- ------------------------------------------------------------
o21f424 as (
    select
        _dlt_parent_id,
        max(value) as swp_status
    from landing_tracker.object_21__field_424
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o21.id,
    o21.created as src_created_at,
    o21.updated as src_updated_at,
    o21.field_1009 as state,
    o21.field_1326 as src_sys_id,
    o21.field_1515 as count_of_job,
    o21.field_185 as development_name,
    o21.field_199_city as address_city,
    o21.field_199_full as address_full,
    o21.field_199_latitude as address_latitude,
    o21.field_199_longitude as address_longitude,
    o21.field_199_state as address_state,
    o21.field_199_street as address_street,
    o21.field_199_street2 as address_street2,
    o21.field_199_zip as address_zip,
    o21.field_201 as short_name,
    o21.field_2084 as does_builder_require_swm,
    o21.field_2085_all_day as cut_off_date_all_day,
    o21.field_2085_date as cut_off_date,
    o21.field_2236 as total_invoiced_value,
    o21.field_2582_url as link_to_confluence_url,
    o21.field_2741 as count_of_project,
    o21.field_415 as potential_swp_value,
    o21.field_418 as general_note,
    o21.field_427 as union_site,
    o21.field_429 as site_access_note,
    o21.field_430 as development_progress_note,
    o21f424.swp_status as swp_status,
    o21._dlt_id as dlt_id,
    o21._dlt_load_id as dlt_load_id,
    o21.created_at as created_at,
    o21.updated_at as updated_at
from o21
left join o21f424 on o21._dlt_id = o21f424._dlt_parent_id