-- ============================================================
-- Model: ln_user
-- Description: Landing-layer view that flattens object_8
--              and its subtables into one record per user.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_8 table
-- ------------------------------------------------------------
o8 as (
    select *
    from landing_tracker.object_8
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_8__field_26
-- ------------------------------------------------------------
o8f26 as (
    select
        _dlt_parent_id,
        max(value) as user_status
    from landing_tracker.object_8__field_26
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_8__field_27
-- ------------------------------------------------------------
o8f27 as (
    select
        _dlt_parent_id,
        max(value) as user_role
    from landing_tracker.object_8__field_27
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_8__old_password_hashes
-- ------------------------------------------------------------
o8old_password_hashes as (
    select
        _dlt_parent_id,
        max(value) as old_password_hashe
    from landing_tracker.object_8__old_password_hashes
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_8__profile_keys
-- ------------------------------------------------------------
o8profile_keys as (
    select
        _dlt_parent_id,
        max(value) as profile_keys
    from landing_tracker.object_8__profile_keys
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o8.id,
    o8.created as src_created_at,
    o8.updated as src_updated_at,
    o8.account_status as account_status,
    o8.approval_status as approval_status,
    o8.field_1676 as header,
    o8.field_1677 as secret,
    o8.field_1746 as metabase,
    o8.field_1852 as sales_or_op,
    o8.field_23_first as name_first,
    o8.field_23_full as name_full,
    o8.field_23_last as name_last,
    o8.field_24_email as email_email,
    o8.field_24_label as email_label,
    o8.field_25 as password,
    o8.field_2500 as volume_builder_metabase_filter,
    o8.field_2531 as force_update_field,
    o8.field_743_email as assistant_email,
    o8.password_expiration as password_expiration,
    o8.utility_key as utility_key,
    o8f26.user_status as user_status,
    o8f27.user_role as user_role,
    o8old_password_hashes.old_password_hashe as old_password_hashe,
    o8profile_keys.profile_keys as profile_keys,
    o8._dlt_id as dlt_id,
    o8._dlt_load_id as dlt_load_id,
    o8.created_at as created_at,
    o8.updated_at as updated_at
from o8
left join o8f26 on o8._dlt_id = o8f26._dlt_parent_id
left join o8f27 on o8._dlt_id = o8f27._dlt_parent_id
left join o8old_password_hashes on o8._dlt_id = o8old_password_hashes._dlt_parent_id
left join o8profile_keys on o8._dlt_id = o8profile_keys._dlt_parent_id