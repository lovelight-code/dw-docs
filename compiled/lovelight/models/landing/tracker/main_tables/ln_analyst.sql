-- ============================================================
-- Model: ln_analyst
-- Description: Landing-layer view that flattens object_117
--              and its subtables into one record per analyst.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_117 table
-- ------------------------------------------------------------
o117 as (
    select *
    from landing_tracker.object_117
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_117__field_1731
-- ------------------------------------------------------------
o117f1731 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_117__field_1731
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_117__field_1732
-- ------------------------------------------------------------
o117f1732 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_117__field_1732
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_117__profile_keys
-- ------------------------------------------------------------
o117profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_117__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o117.id,
    o117.created as src_created_at,
    o117.updated as src_updated_at,
    o117.account_status as account_status,
    o117.approval_status as approval_status,
    o117.field_1728_first as name_first,
    o117.field_1728_full as name_full,
    o117.field_1728_last as name_last,
    o117.field_1729_email as email_email,
    o117.field_1729_label as email_label,
    o117.field_1730 as password,
    o117.user_id as user_id,
    o117.utility_key as utility_key,
    o117f1731.user_status as user_status,
    o117f1732.user_role as user_role,
    o117profile_keys.profile_keys as profile_keys,
    o117._dlt_id as dlt_id,
    o117._dlt_load_id as dlt_load_id,
    o117.created_at as created_at,
    o117.updated_at as updated_at
from o117
left join o117f1731 on o117._dlt_id = o117f1731._dlt_parent_id
left join o117f1732 on o117._dlt_id = o117f1732._dlt_parent_id
left join o117profile_keys on o117._dlt_id = o117profile_keys._dlt_parent_id