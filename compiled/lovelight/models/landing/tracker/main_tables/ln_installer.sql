-- ============================================================
-- Model: ln_installer
-- Description: Landing-layer view that flattens object_71
--              and its subtables into one record per installer.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_71 table
-- ------------------------------------------------------------
o71 as (
    select *
    from landing_tracker.object_71
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_71__field_872
-- ------------------------------------------------------------
o71f872 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_71__field_872
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_71__field_873
-- ------------------------------------------------------------
o71f873 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_71__field_873
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_71__profile_keys
-- ------------------------------------------------------------
o71profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_71__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o71.id,
    o71.created as src_created_at,
    o71.updated as src_updated_at,
    o71.account_status as account_status,
    o71.approval_status as approval_status,
    o71.field_1083 as mobile_61_format,
    o71.field_1486 as hex_display_colour_code,
    o71.field_1487 as colour_key,
    o71.field_1519_city as address_city,
    o71.field_1519_full as address_full,
    o71.field_1519_latitude as address_latitude,
    o71.field_1519_longitude as address_longitude,
    o71.field_1519_state as address_state,
    o71.field_1519_street as address_street,
    o71.field_1519_street2 as address_street2,
    o71.field_1519_zip as address_zip,
    o71.field_1520 as hd_delivery_code,
    o71.field_1526 as test_record,
    o71.field_1565 as get_tentative_invite,
    o71.field_2218 as stocktake,
    o71.field_2642 as is_custom,
    o71.field_869_first as name_first,
    o71.field_869_full as name_full,
    o71.field_869_last as name_last,
    o71.field_870_email as email_email,
    o71.field_870_label as email_label,
    o71.field_871 as password,
    o71.field_885 as sub_contractor,
    o71.user_id as user_id,
    o71.utility_key as utility_key,
    o71f872.user_status as user_status,
    o71f873.user_role as user_role,
    o71profile_keys.profile_keys as profile_keys,
    o71._dlt_id as dlt_id,
    o71._dlt_load_id as dlt_load_id,
    o71.created_at as created_at,
    o71.updated_at as updated_at
from o71
left join o71f872 on o71._dlt_id = o71f872._dlt_parent_id
left join o71f873 on o71._dlt_id = o71f873._dlt_parent_id
left join o71profile_keys on o71._dlt_id = o71profile_keys._dlt_parent_id