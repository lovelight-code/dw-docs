-- ============================================================
-- Model: ln_product_expert
-- Description: Landing-layer view that flattens object_144
--              and its subtables into one record per product_expert.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_144 table
-- ------------------------------------------------------------
o144 as (
    select *
    from landing_tracker.object_144
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_144__field_2112
-- ------------------------------------------------------------
o144f2112 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_144__field_2112
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_144__field_2113
-- ------------------------------------------------------------
o144f2113 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_144__field_2113
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_144__profile_keys
-- ------------------------------------------------------------
o144profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_144__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o144.id,
    o144.created as src_created_at,
    o144.updated as src_updated_at,
    o144.account_status as account_status,
    o144.approval_status as approval_status,
    o144.field_2109_first as name_first,
    o144.field_2109_full as name_full,
    o144.field_2109_last as name_last,
    o144.field_2110_email as email_email,
    o144.field_2110_label as email_label,
    o144.field_2111 as password,
    o144.user_id as user_id,
    o144.utility_key as utility_key,
    o144f2112.user_status as user_status,
    o144f2113.user_role as user_role,
    o144profile_keys.profile_keys as profile_keys,
    o144._dlt_id as dlt_id,
    o144._dlt_load_id as dlt_load_id,
    o144.created_at as created_at,
    o144.updated_at as updated_at
from o144
left join o144f2112 on o144._dlt_id = o144f2112._dlt_parent_id
left join o144f2113 on o144._dlt_id = o144f2113._dlt_parent_id
left join o144profile_keys on o144._dlt_id = o144profile_keys._dlt_parent_id