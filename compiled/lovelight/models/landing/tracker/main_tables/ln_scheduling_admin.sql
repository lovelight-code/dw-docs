-- ============================================================
-- Model: ln_scheduling_admin
-- Description: Landing-layer view that flattens object_106
--              and its subtables into one record per scheduling_admin.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_106 table
-- ------------------------------------------------------------
o106 as (
    select *
    from landing_tracker.object_106
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_106__field_1524
-- ------------------------------------------------------------
o106f1524 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_106__field_1524
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_106__field_1525
-- ------------------------------------------------------------
o106f1525 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_106__field_1525
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_106__profile_keys
-- ------------------------------------------------------------
o106profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_106__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o106.id,
    o106.created as src_created_at,
    o106.updated as src_updated_at,
    o106.account_status as account_status,
    o106.approval_status as approval_status,
    o106.field_1521_first as name_first,
    o106.field_1521_full as name_full,
    o106.field_1521_last as name_last,
    o106.field_1522_email as email_email,
    o106.field_1522_label as email_label,
    o106.field_1523 as password,
    o106.user_id as user_id,
    o106.utility_key as utility_key,
    o106f1524.user_status as user_status,
    o106f1525.user_role as user_role,
    o106profile_keys.profile_keys as profile_keys,
    o106._dlt_id as dlt_id,
    o106._dlt_load_id as dlt_load_id,
    o106.created_at as created_at,
    o106.updated_at as updated_at
from o106
left join o106f1524 on o106._dlt_id = o106f1524._dlt_parent_id
left join o106f1525 on o106._dlt_id = o106f1525._dlt_parent_id
left join o106profile_keys on o106._dlt_id = o106profile_keys._dlt_parent_id