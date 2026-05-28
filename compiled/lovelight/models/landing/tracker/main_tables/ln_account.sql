-- ============================================================
-- Model: ln_account
-- Description: Landing-layer view that flattens object_90
--              and its subtables into one record per account.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_90 table
-- ------------------------------------------------------------
o90 as (
    select *
    from landing_tracker.object_90
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_90__field_1191
-- ------------------------------------------------------------
o90f1191 as (
    select
        _dlt_parent_id,
        max(value) as account_type
    from landing_tracker.object_90__field_1191
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_90__field_2637
-- ------------------------------------------------------------
o90f2637 as (
    select
        _dlt_parent_id,
        max(value) as myob_customer_class
    from landing_tracker.object_90__field_2637
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o90.id,
    o90.created as src_created_at,
    o90.updated as src_updated_at,
    o90.field_1185 as src_sys_id,
    o90.field_1186_all_day as date_created_all_day,
    o90.field_1186_date as date_created_date,
    o90.field_1190_city as head_office_address_city,
    o90.field_1190_full as head_office_address_full,
    o90.field_1190_latitude as head_office_address_latitude,
    o90.field_1190_longitude as head_office_address_longitude,
    o90.field_1190_state as head_office_address_state,
    o90.field_1190_street as head_office_address_street,
    o90.field_1190_street2 as head_office_address_street2,
    o90.field_1190_zip as head_office_address_zip,
    o90.field_1196 as primary_phone,
    o90.field_1198 as description_general_note,
    o90.field_1199 as account_company_name,
    o90.field_1766 as lifetime_value,
    o90.field_1782 as created_by,
    o90.field_1795 as child_accounts_lifetime_value,
    o90.field_1796 as group_lifetime_value,
    o90.field_1802 as count_child_account,
    o90.field_1805 as active_job,
    o90.field_1806 as open_opp,
    o90.field_1807 as unpaid_invoice,
    o90.field_2136 as src_sys_id_2,
    o90.field_2333 as standard_commission,
    o90.field_2550 as abn,
    o90.field_2552 as myob_customer_id,
    o90.field_2977 as acn,
    o90.field_2978 as cover,
    o90.field_2979_all_day as cover_last_updated_all_day,
    o90.field_2979_date as cover_last_updated_date,
    o90.field_2980 as volume_builder_id_portal,
    o90.field_2981 as cid_qbe,
    o90.field_2984_all_day as cover_expiry_all_day,
    o90.field_2984_date as cover_expiry_date,
    o90f1191.account_type as account_type,
    o90f2637.myob_customer_class as myob_customer_class,
    o90._dlt_id as dlt_id,
    o90._dlt_load_id as dlt_load_id,
    o90.created_at as created_at,
    o90.updated_at as updated_at
from o90
left join o90f1191 on o90._dlt_id = o90f1191._dlt_parent_id
left join o90f2637 on o90._dlt_id = o90f2637._dlt_parent_id