-- ============================================================
-- Model: ln_sample_request
-- Description: Landing-layer view that flattens object_172
--              and its subtables into one record per sample_request.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_172 table
-- ------------------------------------------------------------
o172 as (
    select *
    from landing_tracker.object_172
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_172__field_2482
-- ------------------------------------------------------------
o172f2482 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_172__field_2482
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o172.id,
    o172.created as src_created_at,
    o172.updated as src_updated_at,
    o172.field_2465 as src_sys_id,
    o172.field_2469_city as recipient_address_city,
    o172.field_2469_full as recipient_address_full,
    o172.field_2469_state as recipient_address_state,
    o172.field_2469_street as recipient_address_street,
    o172.field_2469_street2 as recipient_address_street2,
    o172.field_2469_zip as recipient_address_zip,
    o172.field_2471 as samples_requested,
    o172.field_2472_all_day as date_lodged_all_day,
    o172.field_2472_date as date_lodged_date,
    o172.field_2473_all_day as date_sent_all_day,
    o172.field_2473_date as date_sent_date,
    o172.field_2476 as tracking_number,
    o172.field_2477 as ref,
    o172.field_2478 as can_t_find_job,
    o172.field_2481 as reference,
    o172.field_2483 as deleted,
    o172f2482.status as status,
    o172._dlt_id as dlt_id,
    o172._dlt_load_id as dlt_load_id,
    o172.created_at as created_at,
    o172.updated_at as updated_at
from o172
left join o172f2482 on o172._dlt_id = o172f2482._dlt_parent_id