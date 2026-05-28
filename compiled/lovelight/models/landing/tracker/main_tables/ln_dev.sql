-- ============================================================
-- Model: ln_dev
-- Description: Landing-layer view that flattens object_44
--              and its subtables into one record per dev.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_44 table
-- ------------------------------------------------------------
o44 as (
    select *
    from landing_tracker.object_44
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_44__field_453
-- ------------------------------------------------------------
o44f453 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_44__field_453
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_44__field_454
-- ------------------------------------------------------------
o44f454 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_44__field_454
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_44__profile_keys
-- ------------------------------------------------------------
o44profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_44__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o44.id,
    o44.created as src_created_at,
    o44.updated as src_updated_at,
    o44.account_status as account_status,
    o44.approval_status as approval_status,
    o44.field_450_first as name_first,
    o44.field_450_full as name_full,
    o44.field_450_last as name_last,
    o44.field_451_email as email_email,
    o44.field_451_label as email_label,
    o44.field_452 as password,
    o44.user_id as user_id,
    o44.utility_key as utility_key,
    o44f453.user_status as user_status,
    o44f454.user_role as user_role,
    o44profile_keys.profile_keys as profile_keys,
    o44._dlt_id as dlt_id,
    o44._dlt_load_id as dlt_load_id,
    o44.created_at as created_at,
    o44.updated_at as updated_at
from o44
left join o44f453 on o44._dlt_id = o44f453._dlt_parent_id
left join o44f454 on o44._dlt_id = o44f454._dlt_parent_id
left join o44profile_keys on o44._dlt_id = o44profile_keys._dlt_parent_id