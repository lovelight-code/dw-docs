-- ============================================================
-- Model: ln_partner
-- Description: Landing-layer view that flattens object_167
--              and its subtables into one record per partner.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_167 table
-- ------------------------------------------------------------
o167 as (
    select *
    from landing_tracker.object_167
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_167__field_2409
-- ------------------------------------------------------------
o167f2409 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_167__field_2409
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_167__field_2410
-- ------------------------------------------------------------
o167f2410 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_167__field_2410
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_167__profile_keys
-- ------------------------------------------------------------
o167profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_167__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o167.id,
    o167.created as src_created_at,
    o167.updated as src_updated_at,
    o167.account_status as account_status,
    o167.approval_status as approval_status,
    o167.field_2406_first as name_first,
    o167.field_2406_full as name_full,
    o167.field_2406_last as name_last,
    o167.field_2407_email as email_email,
    o167.field_2408 as password,
    o167.user_id as user_id,
    o167.utility_key as utility_key,
    o167f2409.user_status as user_status,
    o167f2410.user_role as user_role,
    o167profile_keys.profile_keys as profile_keys,
    o167._dlt_id as dlt_id,
    o167._dlt_load_id as dlt_load_id,
    o167.created_at as created_at,
    o167.updated_at as updated_at
from o167
left join o167f2409 on o167._dlt_id = o167f2409._dlt_parent_id
left join o167f2410 on o167._dlt_id = o167f2410._dlt_parent_id
left join o167profile_keys on o167._dlt_id = o167profile_keys._dlt_parent_id