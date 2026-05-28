-- ============================================================
-- Model: ln_external_estimator
-- Description: Landing-layer view that flattens object_195
--              and its subtables into one record per external_estimator.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_195 table
-- ------------------------------------------------------------
o195 as (
    select *
    from landing_tracker.object_195
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_195__field_2805
-- ------------------------------------------------------------
o195f2805 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_195__field_2805
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_195__field_2806
-- ------------------------------------------------------------
o195f2806 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_195__field_2806
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_195__profile_keys
-- ------------------------------------------------------------
o195profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_195__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o195.id,
    o195.created as src_created_at,
    o195.updated as src_updated_at,
    o195.account_status as account_status,
    o195.approval_status as approval_status,
    o195.field_2802_first as name_first,
    o195.field_2802_full as name_full,
    o195.field_2802_last as name_last,
    o195.field_2803_email as email_email,
    o195.field_2804 as password,
    o195.user_id as user_id,
    o195.utility_key as utility_key,
    o195f2805.user_status as user_status,
    o195f2806.user_role as user_role,
    o195profile_keys.profile_keys as profile_keys,
    o195._dlt_id as dlt_id,
    o195._dlt_load_id as dlt_load_id,
    o195.created_at as created_at,
    o195.updated_at as updated_at
from o195
left join o195f2805 on o195._dlt_id = o195f2805._dlt_parent_id
left join o195f2806 on o195._dlt_id = o195f2806._dlt_parent_id
left join o195profile_keys on o195._dlt_id = o195profile_keys._dlt_parent_id