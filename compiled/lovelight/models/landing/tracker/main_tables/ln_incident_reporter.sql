-- ============================================================
-- Model: ln_incident_reporter
-- Description: Landing-layer view that flattens object_179
--              and its subtables into one record per incident_reporter.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_179 table
-- ------------------------------------------------------------
o179 as (
    select *
    from landing_tracker.object_179
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_179__field_2578
-- ------------------------------------------------------------
o179f2578 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_179__field_2578
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_179__field_2579
-- ------------------------------------------------------------
o179f2579 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_179__field_2579
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_179__profile_keys
-- ------------------------------------------------------------
o179profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_179__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o179.id,
    o179.created as src_created_at,
    o179.updated as src_updated_at,
    o179.account_status as account_status,
    o179.approval_status as approval_status,
    o179.field_2575_first as name_first,
    o179.field_2575_full as name_full,
    o179.field_2575_last as name_last,
    o179.field_2576_email as email_email,
    o179.field_2576_label as email_label,
    o179.field_2577 as password,
    o179.user_id as user_id,
    o179.utility_key as utility_key,
    o179f2578.user_status as user_status,
    o179f2579.user_role as user_role,
    o179profile_keys.profile_keys as profile_keys,
    o179._dlt_id as dlt_id,
    o179._dlt_load_id as dlt_load_id,
    o179.created_at as created_at,
    o179.updated_at as updated_at
from o179
left join o179f2578 on o179._dlt_id = o179f2578._dlt_parent_id
left join o179f2579 on o179._dlt_id = o179f2579._dlt_parent_id
left join o179profile_keys on o179._dlt_id = o179profile_keys._dlt_parent_id