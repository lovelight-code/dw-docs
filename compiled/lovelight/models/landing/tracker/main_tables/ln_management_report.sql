-- ============================================================
-- Model: ln_management_report
-- Description: Landing-layer view that flattens object_36
--              and its subtables into one record per management_report.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_36 table
-- ------------------------------------------------------------
o36 as (
    select *
    from landing_tracker.object_36
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_36__field_377
-- ------------------------------------------------------------
o36f377 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_36__field_377
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_36__field_378
-- ------------------------------------------------------------
o36f378 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_36__field_378
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_36__profile_keys
-- ------------------------------------------------------------
o36profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_36__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o36.id,
    o36.created as src_created_at,
    o36.updated as src_updated_at,
    o36.account_status as account_status,
    o36.approval_status as approval_status,
    o36.field_374_first as name_first,
    o36.field_374_full as name_full,
    o36.field_374_last as name_last,
    o36.field_375_email as email_email,
    o36.field_375_label as email_label,
    o36.field_376 as password,
    o36.user_id as user_id,
    o36.utility_key as utility_key,
    o36f377.user_status as user_status,
    o36f378.user_role as user_role,
    o36profile_keys.profile_keys as profile_keys,
    o36._dlt_id as dlt_id,
    o36._dlt_load_id as dlt_load_id,
    o36.created_at as created_at,
    o36.updated_at as updated_at
from o36
left join o36f377 on o36._dlt_id = o36f377._dlt_parent_id
left join o36f378 on o36._dlt_id = o36f378._dlt_parent_id
left join o36profile_keys on o36._dlt_id = o36profile_keys._dlt_parent_id