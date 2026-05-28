-- ============================================================
-- Model: ln_contractor
-- Description: Landing-layer view that flattens object_56
--              and its subtables into one record per contractor.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_56 table
-- ------------------------------------------------------------
o56 as (
    select *
    from landing_tracker.object_56
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_56__field_628
-- ------------------------------------------------------------
o56f628 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_56__field_628
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_56__field_629
-- ------------------------------------------------------------
o56f629 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_56__field_629
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_56__field_634
-- ------------------------------------------------------------
o56f634 as (
    select
        _dlt_parent_id,
        max(value) as service
    from landing_tracker.object_56__field_634
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_56__profile_keys
-- ------------------------------------------------------------
o56profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_56__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o56.id,
    o56.created as src_created_at,
    o56.updated as src_updated_at,
    o56.account_status as account_status,
    o56.approval_status as approval_status,
    o56.field_625_first as name_first,
    o56.field_625_full as name_full,
    o56.field_625_last as name_last,
    o56.field_626_email as email_email,
    o56.field_627 as password,
    o56.field_633_area as phone_area,
    o56.field_633_full as phone_full,
    o56.field_633_number as phone_number,
    o56.user_id as user_id,
    o56.utility_key as utility_key,
    o56f628.user_status as user_status,
    o56f629.user_role as user_role,
    o56f634.service as service,
    o56profile_keys.profile_keys as profile_keys,
    o56._dlt_id as dlt_id,
    o56._dlt_load_id as dlt_load_id,
    o56.created_at as created_at,
    o56.updated_at as updated_at
from o56
left join o56f628 on o56._dlt_id = o56f628._dlt_parent_id
left join o56f629 on o56._dlt_id = o56f629._dlt_parent_id
left join o56f634 on o56._dlt_id = o56f634._dlt_parent_id
left join o56profile_keys on o56._dlt_id = o56profile_keys._dlt_parent_id