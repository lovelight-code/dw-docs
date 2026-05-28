-- ============================================================
-- Model: ln_role_delivery
-- Description: Landing-layer view that flattens object_143
--              and its subtables into one record per role_delivery.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_143 table
-- ------------------------------------------------------------
o143 as (
    select *
    from landing_tracker.object_143
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_143__field_2062
-- ------------------------------------------------------------
o143f2062 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_143__field_2062
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_143__field_2063
-- ------------------------------------------------------------
o143f2063 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_143__field_2063
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_143__profile_keys
-- ------------------------------------------------------------
o143profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_143__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o143.id,
    o143.created as src_created_at,
    o143.updated as src_updated_at,
    o143.account_status as account_status,
    o143.approval_status as approval_status,
    o143.field_2059_first as name_first,
    o143.field_2059_full as name_full,
    o143.field_2059_last as name_last,
    o143.field_2060_email as email_email,
    o143.field_2060_label as email_label,
    o143.field_2061 as password,
    o143.user_id as user_id,
    o143.utility_key as utility_key,
    o143f2062.user_status as user_status,
    o143f2063.user_role as user_role,
    o143profile_keys.profile_keys as profile_keys,
    o143._dlt_id as dlt_id,
    o143._dlt_load_id as dlt_load_id,
    o143.created_at as created_at,
    o143.updated_at as updated_at
from o143
left join o143f2062 on o143._dlt_id = o143f2062._dlt_parent_id
left join o143f2063 on o143._dlt_id = o143f2063._dlt_parent_id
left join o143profile_keys on o143._dlt_id = o143profile_keys._dlt_parent_id