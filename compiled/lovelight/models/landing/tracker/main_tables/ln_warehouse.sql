-- ============================================================
-- Model: ln_warehouse
-- Description: Landing-layer view that flattens object_65
--              and its subtables into one record per warehouse.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_65 table
-- ------------------------------------------------------------
o65 as (
    select *
    from landing_tracker.object_65
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_65__field_777
-- ------------------------------------------------------------
o65f777 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_65__field_777
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_65__field_778
-- ------------------------------------------------------------
o65f778 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_65__field_778
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_65__profile_keys
-- ------------------------------------------------------------
o65profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_65__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o65.id,
    o65.created as src_created_at,
    o65.updated as src_updated_at,
    o65.account_status as account_status,
    o65.approval_status as approval_status,
    o65.field_774_first as name_first,
    o65.field_774_full as name_full,
    o65.field_774_last as name_last,
    o65.field_775_email as email_email,
    o65.field_775_label as email_label,
    o65.field_776 as password,
    o65.user_id as user_id,
    o65.utility_key as utility_key,
    o65f777.user_status as user_status,
    o65f778.user_role as user_role,
    o65profile_keys.profile_keys as profile_keys,
    o65._dlt_id as dlt_id,
    o65._dlt_load_id as dlt_load_id,
    o65.created_at as created_at,
    o65.updated_at as updated_at
from o65
left join o65f777 on o65._dlt_id = o65f777._dlt_parent_id
left join o65f778 on o65._dlt_id = o65f778._dlt_parent_id
left join o65profile_keys on o65._dlt_id = o65profile_keys._dlt_parent_id