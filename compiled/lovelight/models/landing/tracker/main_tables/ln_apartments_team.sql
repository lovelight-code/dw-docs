-- ============================================================
-- Model: ln_apartments_team
-- Description: Landing-layer view that flattens object_69
--              and its subtables into one record per apartments_team.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_69 table
-- ------------------------------------------------------------
o69 as (
    select *
    from landing_tracker.object_69
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_69__field_822
-- ------------------------------------------------------------
o69f822 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_69__field_822
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_69__field_823
-- ------------------------------------------------------------
o69f823 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_69__field_823
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_69__profile_keys
-- ------------------------------------------------------------
o69profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_69__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o69.id,
    o69.created as src_created_at,
    o69.updated as src_updated_at,
    o69.account_status as account_status,
    o69.approval_status as approval_status,
    o69.field_819_first as name_first,
    o69.field_819_full as name_full,
    o69.field_819_last as name_last,
    o69.field_820_email as email_email,
    o69.field_820_label as email_label,
    o69.field_821 as password,
    o69.user_id as user_id,
    o69.utility_key as utility_key,
    o69f822.user_status as user_status,
    o69f823.user_role as user_role,
    o69profile_keys.profile_keys as profile_keys,
    o69._dlt_id as dlt_id,
    o69._dlt_load_id as dlt_load_id,
    o69.created_at as created_at,
    o69.updated_at as updated_at
from o69
left join o69f822 on o69._dlt_id = o69f822._dlt_parent_id
left join o69f823 on o69._dlt_id = o69f823._dlt_parent_id
left join o69profile_keys on o69._dlt_id = o69profile_keys._dlt_parent_id