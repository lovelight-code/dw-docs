-- ============================================================
-- Model: ln_project_manager
-- Description: Landing-layer view that flattens object_161
--              and its subtables into one record per project_manager.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_161 table
-- ------------------------------------------------------------
o161 as (
    select *
    from landing_tracker.object_161
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_161__field_2291
-- ------------------------------------------------------------
o161f2291 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_161__field_2291
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_161__field_2292
-- ------------------------------------------------------------
o161f2292 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_161__field_2292
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_161__profile_keys
-- ------------------------------------------------------------
o161profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_161__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o161.id,
    o161.created as src_created_at,
    o161.updated as src_updated_at,
    o161.account_status as account_status,
    o161.approval_status as approval_status,
    o161.field_2288_first as name_first,
    o161.field_2288_full as name_full,
    o161.field_2288_last as name_last,
    o161.field_2289_email as email_email,
    o161.field_2289_label as email_label,
    o161.field_2290 as password,
    o161.user_id as user_id,
    o161.utility_key as utility_key,
    o161f2291.user_status as user_status,
    o161f2292.user_role as user_role,
    o161profile_keys.profile_keys as profile_keys,
    o161._dlt_id as dlt_id,
    o161._dlt_load_id as dlt_load_id,
    o161.created_at as created_at,
    o161.updated_at as updated_at
from o161
left join o161f2291 on o161._dlt_id = o161f2291._dlt_parent_id
left join o161f2292 on o161._dlt_id = o161f2292._dlt_parent_id
left join o161profile_keys on o161._dlt_id = o161profile_keys._dlt_parent_id