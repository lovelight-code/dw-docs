-- ============================================================
-- Model: ln_my_home_report_viewer
-- Description: Landing-layer view that flattens object_174
--              and its subtables into one record per my_home_report_viewer.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_174 table
-- ------------------------------------------------------------
o174 as (
    select *
    from landing_tracker.object_174
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_174__field_2504
-- ------------------------------------------------------------
o174f2504 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_174__field_2504
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_174__field_2505
-- ------------------------------------------------------------
o174f2505 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_174__field_2505
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_174__profile_keys
-- ------------------------------------------------------------
o174profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_174__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o174.id,
    o174.created as src_created_at,
    o174.updated as src_updated_at,
    o174.account_status as account_status,
    o174.approval_status as approval_status,
    o174.field_2501_first as name_first,
    o174.field_2501_full as name_full,
    o174.field_2501_last as name_last,
    o174.field_2502_email as email_email,
    o174.field_2502_label as email_label,
    o174.field_2503 as password,
    o174.user_id as user_id,
    o174.utility_key as utility_key,
    o174f2504.user_status as user_status,
    o174f2505.user_role as user_role,
    o174profile_keys.profile_keys as profile_keys,
    o174._dlt_id as dlt_id,
    o174._dlt_load_id as dlt_load_id,
    o174.created_at as created_at,
    o174.updated_at as updated_at
from o174
left join o174f2504 on o174._dlt_id = o174f2504._dlt_parent_id
left join o174f2505 on o174._dlt_id = o174f2505._dlt_parent_id
left join o174profile_keys on o174._dlt_id = o174profile_keys._dlt_parent_id