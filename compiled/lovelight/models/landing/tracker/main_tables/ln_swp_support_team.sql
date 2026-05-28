-- ============================================================
-- Model: ln_swp_support_team
-- Description: Landing-layer view that flattens object_85
--              and its subtables into one record per swp_support_team.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_85 table
-- ------------------------------------------------------------
o85 as (
    select *
    from landing_tracker.object_85
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_85__field_1021
-- ------------------------------------------------------------
o85f1021 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_85__field_1021
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_85__field_1022
-- ------------------------------------------------------------
o85f1022 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_85__field_1022
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_85__profile_keys
-- ------------------------------------------------------------
o85profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_85__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o85.id,
    o85.created as src_created_at,
    o85.updated as src_updated_at,
    o85.account_status as account_status,
    o85.approval_status as approval_status,
    o85.field_1018_first as name_first,
    o85.field_1018_full as name_full,
    o85.field_1018_last as name_last,
    o85.field_1019_email as email_email,
    o85.field_1019_label as email_label,
    o85.field_1020 as password,
    o85.user_id as user_id,
    o85.utility_key as utility_key,
    o85f1021.user_status as user_status,
    o85f1022.user_role as user_role,
    o85profile_keys.profile_keys as profile_keys,
    o85._dlt_id as dlt_id,
    o85._dlt_load_id as dlt_load_id,
    o85.created_at as created_at,
    o85.updated_at as updated_at
from o85
left join o85f1021 on o85._dlt_id = o85f1021._dlt_parent_id
left join o85f1022 on o85._dlt_id = o85f1022._dlt_parent_id
left join o85profile_keys on o85._dlt_id = o85profile_keys._dlt_parent_id