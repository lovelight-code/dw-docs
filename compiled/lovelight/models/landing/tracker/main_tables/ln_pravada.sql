-- ============================================================
-- Model: ln_pravada
-- Description: Landing-layer view that flattens object_210
--              and its subtables into one record per pravada.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_210 table
-- ------------------------------------------------------------
o210 as (
    select *
    from landing_tracker.object_210
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_210__field_3050
-- ------------------------------------------------------------
o210f3050 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_210__field_3050
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_210__field_3051
-- ------------------------------------------------------------
o210f3051 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_210__field_3051
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_210__profile_keys
-- ------------------------------------------------------------
o210profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_210__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o210.id,
    o210.created as src_created_at,
    o210.updated as src_updated_at,
    o210.account_status as account_status,
    o210.approval_status as approval_status,
    o210.field_3047_first as name_first,
    o210.field_3047_full as name_full,
    o210.field_3047_last as name_last,
    o210.field_3048_email as email_email,
    o210.field_3048_label as email_label,
    o210.field_3049 as password,
    o210.user_id as user_id,
    o210.utility_key as utility_key,
    o210f3050.user_status as user_status,
    o210f3051.user_role as user_role,
    o210profile_keys.profile_keys as profile_keys,
    o210._dlt_id as dlt_id,
    o210._dlt_load_id as dlt_load_id,
    o210.created_at as created_at,
    o210.updated_at as updated_at
from o210
left join o210f3050 on o210._dlt_id = o210f3050._dlt_parent_id
left join o210f3051 on o210._dlt_id = o210f3051._dlt_parent_id
left join o210profile_keys on o210._dlt_id = o210profile_keys._dlt_parent_id