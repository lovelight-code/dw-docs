-- ============================================================
-- Model: ln_supplier_login
-- Description: Landing-layer view that flattens object_102
--              and its subtables into one record per supplier_login.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_102 table
-- ------------------------------------------------------------
o102 as (
    select *
    from landing_tracker.object_102
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_102__field_1450
-- ------------------------------------------------------------
o102f1450 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_102__field_1450
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_102__field_1451
-- ------------------------------------------------------------
o102f1451 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_102__field_1451
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_102__profile_keys
-- ------------------------------------------------------------
o102profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_102__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o102.id,
    o102.created as src_created_at,
    o102.updated as src_updated_at,
    o102.account_status as account_status,
    o102.approval_status as approval_status,
    o102.field_1447_first as name_first,
    o102.field_1447_full as name_full,
    o102.field_1447_last as name_last,
    o102.field_1448_email as email_email,
    o102.field_1448_label as email_label,
    o102.field_1449 as password,
    o102.field_1471 as auto_increment,
    o102.field_1473_all_day as date_time_created_all_day,
    o102.field_1473_date as date_time_created_date,
    o102.field_1539_full as mobile_phone_full,
    o102.field_1539_number as mobile_phone_number,
    o102.field_1540_full as office_phone_full,
    o102.field_1540_number as office_phone_number,
    o102.field_2021 as position_title,
    o102.user_id as user_id,
    o102.utility_key as utility_key,
    o102f1450.user_status as user_status,
    o102f1451.user_role as user_role,
    o102profile_keys.profile_keys as profile_keys,
    o102._dlt_id as dlt_id,
    o102._dlt_load_id as dlt_load_id,
    o102.created_at as created_at,
    o102.updated_at as updated_at
from o102
left join o102f1450 on o102._dlt_id = o102f1450._dlt_parent_id
left join o102f1451 on o102._dlt_id = o102f1451._dlt_parent_id
left join o102profile_keys on o102._dlt_id = o102profile_keys._dlt_parent_id