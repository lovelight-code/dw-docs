-- ============================================================
-- Model: ln_salespeople
-- Description: Landing-layer view that flattens object_82
--              and its subtables into one record per salespeople.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_82 table
-- ------------------------------------------------------------
o82 as (
    select *
    from landing_tracker.object_82
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_82__field_2819
-- ------------------------------------------------------------
o82f2819 as (
    select
        _dlt_parent_id,
        max(value) as test
    from landing_tracker.object_82__field_2819
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_82__field_959
-- ------------------------------------------------------------
o82f959 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_82__field_959
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_82__field_960
-- ------------------------------------------------------------
o82f960 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_82__field_960
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_82__profile_keys
-- ------------------------------------------------------------
o82profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_82__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o82.id,
    o82.created as src_created_at,
    o82.updated as src_updated_at,
    o82.account_status as account_status,
    o82.approval_status as approval_status,
    o82.field_1323 as auto_increment,
    o82.field_1377 as send_slack_summary,
    o82.field_1404 as first_name,
    o82.field_1596 as unsubscribe_from_callout_invite,
    o82.field_1602_full as phone_full,
    o82.field_1602_number as phone_number,
    o82.field_1603 as name_ctc,
    o82.field_2818 as full_name_for_reporting,
    o82.field_2901 as is_reported_sale,
    o82.field_2925 as myob_salesperson_id,
    o82.field_956_first as name_first,
    o82.field_956_full as name_full,
    o82.field_956_last as name_last,
    o82.field_957_email as email_email,
    o82.field_957_label as email_label,
    o82.field_958 as password,
    o82.user_id as user_id,
    o82.utility_key as utility_key,
    o82f2819.test as test,
    o82f959.user_status as user_status,
    o82f960.user_role as user_role,
    o82profile_keys.profile_keys as profile_keys,
    o82._dlt_id as dlt_id,
    o82._dlt_load_id as dlt_load_id,
    o82.created_at as created_at,
    o82.updated_at as updated_at
from o82
left join o82f2819 on o82._dlt_id = o82f2819._dlt_parent_id
left join o82f959 on o82._dlt_id = o82f959._dlt_parent_id
left join o82f960 on o82._dlt_id = o82f960._dlt_parent_id
left join o82profile_keys on o82._dlt_id = o82profile_keys._dlt_parent_id