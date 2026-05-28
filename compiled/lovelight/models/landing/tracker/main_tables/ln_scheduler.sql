-- ============================================================
-- Model: ln_scheduler
-- Description: Landing-layer view that flattens object_62
--              and its subtables into one record per scheduler.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_62 table
-- ------------------------------------------------------------
o62 as (
    select *
    from landing_tracker.object_62
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_62__field_739
-- ------------------------------------------------------------
o62f739 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_62__field_739
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_62__field_740
-- ------------------------------------------------------------
o62f740 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_62__field_740
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_62__profile_keys
-- ------------------------------------------------------------
o62profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_62__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o62.id,
    o62.created as src_created_at,
    o62.updated as src_updated_at,
    o62.account_status as account_status,
    o62.approval_status as approval_status,
    o62.field_736_first as name_first,
    o62.field_736_full as name_full,
    o62.field_736_last as name_last,
    o62.field_737_email as email_email,
    o62.field_737_label as email_label,
    o62.field_738 as password,
    o62.user_id as user_id,
    o62.utility_key as utility_key,
    o62f739.user_status as user_status,
    o62f740.user_role as user_role,
    o62profile_keys.profile_keys as profile_keys,
    o62._dlt_id as dlt_id,
    o62._dlt_load_id as dlt_load_id,
    o62.created_at as created_at,
    o62.updated_at as updated_at
from o62
left join o62f739 on o62._dlt_id = o62f739._dlt_parent_id
left join o62f740 on o62._dlt_id = o62f740._dlt_parent_id
left join o62profile_keys on o62._dlt_id = o62profile_keys._dlt_parent_id