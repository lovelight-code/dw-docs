-- ============================================================
-- Model: ln_operation
-- Description: Landing-layer view that flattens object_68
--              and its subtables into one record per operation.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_68 table
-- ------------------------------------------------------------
o68 as (
    select *
    from landing_tracker.object_68
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_68__field_816
-- ------------------------------------------------------------
o68f816 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_68__field_816
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_68__field_817
-- ------------------------------------------------------------
o68f817 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_68__field_817
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_68__profile_keys
-- ------------------------------------------------------------
o68profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_68__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o68.id,
    o68.created as src_created_at,
    o68.updated as src_updated_at,
    o68.account_status as account_status,
    o68.approval_status as approval_status,
    o68.field_1597 as unsubscribe_from_callout_invite,
    o68.field_1604_full as phone_full,
    o68.field_1604_number as phone_number,
    o68.field_1605 as name_ctc,
    o68.field_2018 as primary_role,
    o68.field_2820 as first_name,
    o68.field_813_first as name_first,
    o68.field_813_full as name_full,
    o68.field_813_last as name_last,
    o68.field_814_email as email_email,
    o68.field_814_label as email_label,
    o68.field_815 as password,
    o68.user_id as user_id,
    o68.utility_key as utility_key,
    o68f816.user_status as user_status,
    o68f817.user_role as user_role,
    o68profile_keys.profile_keys as profile_keys,
    o68._dlt_id as dlt_id,
    o68._dlt_load_id as dlt_load_id,
    o68.created_at as created_at,
    o68.updated_at as updated_at
from o68
left join o68f816 on o68._dlt_id = o68f816._dlt_parent_id
left join o68f817 on o68._dlt_id = o68f817._dlt_parent_id
left join o68profile_keys on o68._dlt_id = o68profile_keys._dlt_parent_id