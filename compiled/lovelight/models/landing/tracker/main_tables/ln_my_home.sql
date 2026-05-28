-- ============================================================
-- Model: ln_my_home
-- Description: Landing-layer view that flattens object_171
--              and its subtables into one record per my_home.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_171 table
-- ------------------------------------------------------------
o171 as (
    select *
    from landing_tracker.object_171
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_171__field_2456
-- ------------------------------------------------------------
o171f2456 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_171__field_2456
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_171__field_2457
-- ------------------------------------------------------------
o171f2457 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_171__field_2457
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_171__profile_keys
-- ------------------------------------------------------------
o171profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_171__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o171.id,
    o171.created as src_created_at,
    o171.updated as src_updated_at,
    o171.account_status as account_status,
    o171.approval_status as approval_status,
    o171.field_2453_first as name_first,
    o171.field_2453_full as name_full,
    o171.field_2453_last as name_last,
    o171.field_2454_email as email_email,
    o171.field_2454_label as email_label,
    o171.field_2455 as password,
    o171.user_id as user_id,
    o171.utility_key as utility_key,
    o171f2456.user_status as user_status,
    o171f2457.user_role as user_role,
    o171profile_keys.profile_keys as profile_keys,
    o171._dlt_id as dlt_id,
    o171._dlt_load_id as dlt_load_id,
    o171.created_at as created_at,
    o171.updated_at as updated_at
from o171
left join o171f2456 on o171._dlt_id = o171f2456._dlt_parent_id
left join o171f2457 on o171._dlt_id = o171f2457._dlt_parent_id
left join o171profile_keys on o171._dlt_id = o171profile_keys._dlt_parent_id