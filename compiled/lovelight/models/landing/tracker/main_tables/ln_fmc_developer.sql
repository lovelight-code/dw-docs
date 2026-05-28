-- ============================================================
-- Model: ln_fmc_developer
-- Description: Landing-layer view that flattens object_73
--              and its subtables into one record per fmc_developer.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_73 table
-- ------------------------------------------------------------
o73 as (
    select *
    from landing_tracker.object_73
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_73__field_883
-- ------------------------------------------------------------
o73f883 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_73__field_883
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_73__field_884
-- ------------------------------------------------------------
o73f884 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_73__field_884
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_73__profile_keys
-- ------------------------------------------------------------
o73profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_73__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o73.id,
    o73.created as src_created_at,
    o73.updated as src_updated_at,
    o73.account_status as account_status,
    o73.approval_status as approval_status,
    o73.field_880_first as name_first,
    o73.field_880_full as name_full,
    o73.field_880_last as name_last,
    o73.field_881_email as email_email,
    o73.field_881_label as email_label,
    o73.field_882 as password,
    o73.user_id as user_id,
    o73.utility_key as utility_key,
    o73f883.user_status as user_status,
    o73f884.user_role as user_role,
    o73profile_keys.profile_keys as profile_keys,
    o73._dlt_id as dlt_id,
    o73._dlt_load_id as dlt_load_id,
    o73.created_at as created_at,
    o73.updated_at as updated_at
from o73
left join o73f883 on o73._dlt_id = o73f883._dlt_parent_id
left join o73f884 on o73._dlt_id = o73f884._dlt_parent_id
left join o73profile_keys on o73._dlt_id = o73profile_keys._dlt_parent_id