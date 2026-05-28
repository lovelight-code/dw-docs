-- ============================================================
-- Model: ln_oh_and_s
-- Description: Landing-layer view that flattens object_163
--              and its subtables into one record per oh_and_s.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_163 table
-- ------------------------------------------------------------
o163 as (
    select *
    from landing_tracker.object_163
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_163__field_2325
-- ------------------------------------------------------------
o163f2325 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_163__field_2325
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_163__field_2326
-- ------------------------------------------------------------
o163f2326 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_163__field_2326
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_163__profile_keys
-- ------------------------------------------------------------
o163profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_163__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o163.id,
    o163.created as src_created_at,
    o163.updated as src_updated_at,
    o163.account_status as account_status,
    o163.approval_status as approval_status,
    o163.field_2322_first as name_first,
    o163.field_2322_full as name_full,
    o163.field_2322_last as name_last,
    o163.field_2323_email as email_email,
    o163.field_2323_label as email_label,
    o163.field_2324 as password,
    o163.user_id as user_id,
    o163.utility_key as utility_key,
    o163f2325.user_status as user_status,
    o163f2326.user_role as user_role,
    o163profile_keys.profile_keys as profile_keys,
    o163._dlt_id as dlt_id,
    o163._dlt_load_id as dlt_load_id,
    o163.created_at as created_at,
    o163.updated_at as updated_at
from o163
left join o163f2325 on o163._dlt_id = o163f2325._dlt_parent_id
left join o163f2326 on o163._dlt_id = o163f2326._dlt_parent_id
left join o163profile_keys on o163._dlt_id = o163profile_keys._dlt_parent_id