-- ============================================================
-- Model: ln_volume_private
-- Description: Landing-layer view that flattens object_176
--              and its subtables into one record per volume_private.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_176 table
-- ------------------------------------------------------------
o176 as (
    select *
    from landing_tracker.object_176
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_176__field_2541
-- ------------------------------------------------------------
o176f2541 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_176__field_2541
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_176__field_2542
-- ------------------------------------------------------------
o176f2542 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_176__field_2542
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_176__profile_keys
-- ------------------------------------------------------------
o176profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_176__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o176.id,
    o176.created as src_created_at,
    o176.updated as src_updated_at,
    o176.account_status as account_status,
    o176.approval_status as approval_status,
    o176.field_2538_first as name_first,
    o176.field_2538_full as name_full,
    o176.field_2538_last as name_last,
    o176.field_2539_email as email_email,
    o176.field_2539_label as email_label,
    o176.field_2540 as password,
    o176.user_id as user_id,
    o176.utility_key as utility_key,
    o176f2541.user_status as user_status,
    o176f2542.user_role as user_role,
    o176profile_keys.profile_keys as profile_keys,
    o176._dlt_id as dlt_id,
    o176._dlt_load_id as dlt_load_id,
    o176.created_at as created_at,
    o176.updated_at as updated_at
from o176
left join o176f2541 on o176._dlt_id = o176f2541._dlt_parent_id
left join o176f2542 on o176._dlt_id = o176f2542._dlt_parent_id
left join o176profile_keys on o176._dlt_id = o176profile_keys._dlt_parent_id