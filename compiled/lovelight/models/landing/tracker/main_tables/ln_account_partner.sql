-- ============================================================
-- Model: ln_account_partner
-- Description: Landing-layer view that flattens object_105
--              and its subtables into one record per account_partner.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_105 table
-- ------------------------------------------------------------
o105 as (
    select *
    from landing_tracker.object_105
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_105__field_1510
-- ------------------------------------------------------------
o105f1510 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_105__field_1510
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_105__field_1511
-- ------------------------------------------------------------
o105f1511 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_105__field_1511
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_105__profile_keys
-- ------------------------------------------------------------
o105profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_105__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o105.id,
    o105.created as src_created_at,
    o105.updated as src_updated_at,
    o105.account_status as account_status,
    o105.approval_status as approval_status,
    o105.field_1507_first as name_first,
    o105.field_1507_full as name_full,
    o105.field_1507_last as name_last,
    o105.field_1508_email as email_email,
    o105.field_1509 as password,
    o105.user_id as user_id,
    o105f1510.user_status as user_status,
    o105f1511.user_role as user_role,
    o105profile_keys.profile_keys as profile_keys,
    o105._dlt_id as dlt_id,
    o105._dlt_load_id as dlt_load_id,
    o105.created_at as created_at,
    o105.updated_at as updated_at
from o105
left join o105f1510 on o105._dlt_id = o105f1510._dlt_parent_id
left join o105f1511 on o105._dlt_id = o105f1511._dlt_parent_id
left join o105profile_keys on o105._dlt_id = o105profile_keys._dlt_parent_id