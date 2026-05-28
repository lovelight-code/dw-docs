-- ============================================================
-- Model: ln_director
-- Description: Landing-layer view that flattens object_177
--              and its subtables into one record per director.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_177 table
-- ------------------------------------------------------------
o177 as (
    select *
    from landing_tracker.object_177
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_177__field_2546
-- ------------------------------------------------------------
o177f2546 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_177__field_2546
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_177__field_2547
-- ------------------------------------------------------------
o177f2547 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_177__field_2547
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_177__profile_keys
-- ------------------------------------------------------------
o177profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_177__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o177.id,
    o177.created as src_created_at,
    o177.updated as src_updated_at,
    o177.account_status as account_status,
    o177.approval_status as approval_status,
    o177.field_2543_first as name_first,
    o177.field_2543_full as name_full,
    o177.field_2543_last as name_last,
    o177.field_2544_email as email_email,
    o177.field_2544_label as email_label,
    o177.field_2545 as password,
    o177.user_id as user_id,
    o177.utility_key as utility_key,
    o177f2546.user_status as user_status,
    o177f2547.user_role as user_role,
    o177profile_keys.profile_keys as profile_keys,
    o177._dlt_id as dlt_id,
    o177._dlt_load_id as dlt_load_id,
    o177.created_at as created_at,
    o177.updated_at as updated_at
from o177
left join o177f2546 on o177._dlt_id = o177f2546._dlt_parent_id
left join o177f2547 on o177._dlt_id = o177f2547._dlt_parent_id
left join o177profile_keys on o177._dlt_id = o177profile_keys._dlt_parent_id