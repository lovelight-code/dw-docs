-- ============================================================
-- Model: ln_accounting
-- Description: Landing-layer view that flattens object_93
--              and its subtables into one record per accounting.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_93 table
-- ------------------------------------------------------------
o93 as (
    select *
    from landing_tracker.object_93
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_93__field_1272
-- ------------------------------------------------------------
o93f1272 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_93__field_1272
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_93__field_1273
-- ------------------------------------------------------------
o93f1273 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_93__field_1273
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_93__profile_keys
-- ------------------------------------------------------------
o93profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_93__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o93.id,
    o93.created as src_created_at,
    o93.updated as src_updated_at,
    o93.account_status as account_status,
    o93.approval_status as approval_status,
    o93.field_1269_first as name_first,
    o93.field_1269_full as name_full,
    o93.field_1269_last as name_last,
    o93.field_1270_email as email_email,
    o93.field_1270_label as email_label,
    o93.field_1271 as password,
    o93.user_id as user_id,
    o93.utility_key as utility_key,
    o93f1272.user_status as user_status,
    o93f1273.user_role as user_role,
    o93profile_keys.profile_keys as profile_keys,
    o93._dlt_id as dlt_id,
    o93._dlt_load_id as dlt_load_id,
    o93.created_at as created_at,
    o93.updated_at as updated_at
from o93
left join o93f1272 on o93._dlt_id = o93f1272._dlt_parent_id
left join o93f1273 on o93._dlt_id = o93f1273._dlt_parent_id
left join o93profile_keys on o93._dlt_id = o93profile_keys._dlt_parent_id