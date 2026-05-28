-- ============================================================
-- Model: ln_accounts_receivable
-- Description: Landing-layer view that flattens object_169
--              and its subtables into one record per accounts_receivable.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_169 table
-- ------------------------------------------------------------
o169 as (
    select *
    from landing_tracker.object_169
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_169__field_2447
-- ------------------------------------------------------------
o169f2447 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_169__field_2447
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_169__field_2448
-- ------------------------------------------------------------
o169f2448 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_169__field_2448
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_169__profile_keys
-- ------------------------------------------------------------
o169profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_169__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o169.id,
    o169.created as src_created_at,
    o169.updated as src_updated_at,
    o169.account_status as account_status,
    o169.approval_status as approval_status,
    o169.field_2444_first as name_first,
    o169.field_2444_full as name_full,
    o169.field_2444_last as name_last,
    o169.field_2445_email as email_email,
    o169.field_2445_label as email_label,
    o169.field_2446 as password,
    o169.user_id as user_id,
    o169.utility_key as utility_key,
    o169f2447.user_status as user_status,
    o169f2448.user_role as user_role,
    o169profile_keys.profile_keys as profile_keys,
    o169._dlt_id as dlt_id,
    o169._dlt_load_id as dlt_load_id,
    o169.created_at as created_at,
    o169.updated_at as updated_at
from o169
left join o169f2447 on o169._dlt_id = o169f2447._dlt_parent_id
left join o169f2448 on o169._dlt_id = o169f2448._dlt_parent_id
left join o169profile_keys on o169._dlt_id = o169profile_keys._dlt_parent_id