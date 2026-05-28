-- ============================================================
-- Model: ln_staff
-- Description: Landing-layer view that flattens object_11
--              and its subtables into one record per staff.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_11 table
-- ------------------------------------------------------------
o11 as (
    select *
    from landing_tracker.object_11
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_11__field_630
-- ------------------------------------------------------------
o11f630 as (
    select
        _dlt_parent_id,
        max(value) as state
    from landing_tracker.object_11__field_630
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_11__field_65
-- ------------------------------------------------------------
o11f65 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_11__field_65
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_11__field_66
-- ------------------------------------------------------------
o11f66 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_11__field_66
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_11__profile_keys
-- ------------------------------------------------------------
o11profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_11__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o11.id,
    o11.created as src_created_at,
    o11.updated as src_updated_at,
    o11.account_status as account_status,
    o11.approval_status as approval_status,
    o11.field_1073 as private_number,
    o11.field_2730 as primary_division,
    o11.field_3110 as bamboo_id,
    o11.field_3111 as myob_id,
    o11.field_3160_email as email_email_field_3160,
    o11.field_3160_label as email_label_field_3160,
    o11.field_3161_email as field_3161_email,
    o11.field_3161_label as field_3161_label,
    o11.field_62_first as name_first,
    o11.field_62_full as name_full,
    o11.field_62_last as name_last,
    o11.field_631_full as mobile_full,
    o11.field_631_number as mobile_number,
    o11.field_632_full as extension_full,
    o11.field_632_number as extension_number,
    o11.field_63_email as email_email,
    o11.field_63_label as email_label,
    o11.field_64 as password,
    o11.field_697_all_day as birthday_all_day,
    o11.field_697_date as birthday_date,
    o11.field_697_repeat__end_count as birthday_repeat_end_count,
    o11.field_697_repeat__end_count__v_text as birthday_repeat_end_count_v_text,
    o11.field_697_repeat__end_date as birthday_repeat_end_date,
    o11.field_697_repeat__endson as birthday_repeat_endson,
    o11.field_697_repeat__fr as birthday_repeat_fr,
    o11.field_697_repeat__frequency as birthday_repeat_frequency,
    o11.field_697_repeat__interval as birthday_repeat_interval,
    o11.field_697_repeat__mo as birthday_repeat_mo,
    o11.field_697_repeat__repeatby as birthday_repeat_repeatby,
    o11.field_697_repeat__sa as birthday_repeat_sa,
    o11.field_697_repeat__start_date as birthday_repeat_start_date,
    o11.field_697_repeat__su as birthday_repeat_su,
    o11.field_697_repeat__th as birthday_repeat_th,
    o11.field_697_repeat__tu as birthday_repeat_tu,
    o11.field_697_repeat__we as birthday_repeat_we,
    o11.field_697_to as birthday_to,
    o11.field_742_area as direct_area,
    o11.field_742_full as direct_full,
    o11.field_742_number as direct_number,
    o11.user_id as user_id,
    o11.utility_key as utility_key,
    o11f630.state as state,
    o11f65.user_status as user_status,
    o11f66.user_role as user_role,
    o11profile_keys.profile_keys as profile_keys,
    o11._dlt_id as dlt_id,
    o11._dlt_load_id as dlt_load_id,
    o11.created_at as created_at,
    o11.updated_at as updated_at
from o11
left join o11f630 on o11._dlt_id = o11f630._dlt_parent_id
left join o11f65 on o11._dlt_id = o11f65._dlt_parent_id
left join o11f66 on o11._dlt_id = o11f66._dlt_parent_id
left join o11profile_keys on o11._dlt_id = o11profile_keys._dlt_parent_id