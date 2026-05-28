-- ============================================================
-- Model: ln_qld_installer_invoice_reconciliation
-- Description: Landing-layer view that flattens object_84
--              and its subtables into one record per qld_installer_invoice_reconciliation.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_84 table
-- ------------------------------------------------------------
o84 as (
    select *
    from landing_tracker.object_84
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_84__field_990
-- ------------------------------------------------------------
o84f990 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_84__field_990
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_84__field_991
-- ------------------------------------------------------------
o84f991 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_84__field_991
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_84__profile_keys
-- ------------------------------------------------------------
o84profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_84__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o84.id,
    o84.created as src_created_at,
    o84.updated as src_updated_at,
    o84.account_status as account_status,
    o84.approval_status as approval_status,
    o84.field_987_first as name_first,
    o84.field_987_full as name_full,
    o84.field_987_last as name_last,
    o84.field_988_email as email_email,
    o84.field_988_label as email_label,
    o84.field_989 as password,
    o84.user_id as user_id,
    o84.utility_key as utility_key,
    o84f990.user_status as user_status,
    o84f991.user_role as user_role,
    o84profile_keys.profile_keys as profile_keys,
    o84._dlt_id as dlt_id,
    o84._dlt_load_id as dlt_load_id,
    o84.created_at as created_at,
    o84.updated_at as updated_at
from o84
left join o84f990 on o84._dlt_id = o84f990._dlt_parent_id
left join o84f991 on o84._dlt_id = o84f991._dlt_parent_id
left join o84profile_keys on o84._dlt_id = o84profile_keys._dlt_parent_id