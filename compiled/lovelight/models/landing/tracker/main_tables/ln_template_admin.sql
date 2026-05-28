-- ============================================================
-- Model: ln_template_admin
-- Description: Landing-layer view that flattens object_118
--              and its subtables into one record per template_admin.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_118 table
-- ------------------------------------------------------------
o118 as (
    select *
    from landing_tracker.object_118
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_118__field_1737
-- ------------------------------------------------------------
o118f1737 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_118__field_1737
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_118__field_1738
-- ------------------------------------------------------------
o118f1738 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_118__field_1738
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_118__profile_keys
-- ------------------------------------------------------------
o118profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_118__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o118.id,
    o118.created as src_created_at,
    o118.updated as src_updated_at,
    o118.account_status as account_status,
    o118.approval_status as approval_status,
    o118.field_1734_first as name_first,
    o118.field_1734_full as name_full,
    o118.field_1734_last as name_last,
    o118.field_1735_email as email_email,
    o118.field_1735_label as email_label,
    o118.field_1736 as password,
    o118.user_id as user_id,
    o118.utility_key as utility_key,
    o118f1737.user_status as user_status,
    o118f1738.user_role as user_role,
    o118profile_keys.profile_keys as profile_keys,
    o118._dlt_id as dlt_id,
    o118._dlt_load_id as dlt_load_id,
    o118.created_at as created_at,
    o118.updated_at as updated_at
from o118
left join o118f1737 on o118._dlt_id = o118f1737._dlt_parent_id
left join o118f1738 on o118._dlt_id = o118f1738._dlt_parent_id
left join o118profile_keys on o118._dlt_id = o118profile_keys._dlt_parent_id