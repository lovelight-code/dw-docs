-- ============================================================
-- Model: ln_supplier
-- Description: Landing-layer view that flattens object_101
--              and its subtables into one record per supplier.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_101 table
-- ------------------------------------------------------------
o101 as (
    select *
    from landing_tracker.object_101
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_101__field_1434
-- ------------------------------------------------------------
o101f1434 as (
    select
        _dlt_parent_id,
        max(value) as products_supplied
    from landing_tracker.object_101__field_1434
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o101.id,
    o101.created as src_created_at,
    o101.updated as src_updated_at,
    o101.field_1414 as company_name,
    o101.field_1429 as phone,
    o101.field_1431 as note,
    o101.field_1432_all_day as date_created_all_day,
    o101.field_1432_date as date_created_date,
    o101.field_1433 as supplier_abbreviation,
    o101.field_1440 as supplier_sort_order,
    o101.field_1441_email as email_email,
    o101.field_1442 as login_detail,
    o101.field_1453_city as address_city,
    o101.field_1453_full as address_full,
    o101.field_1453_latitude as address_latitude,
    o101.field_1453_longitude as address_longitude,
    o101.field_1453_state as address_state,
    o101.field_1453_street as address_street,
    o101.field_1453_street2 as address_street2,
    o101.field_1453_zip as address_zip,
    o101.field_1501_url as website_url,
    o101.field_1541_url as customer_portal_url,
    o101.field_1733 as src_sys_id,
    o101f1434.products_supplied as products_supplied,
    o101._dlt_id as dlt_id,
    o101._dlt_load_id as dlt_load_id,
    o101.created_at as created_at,
    o101.updated_at as updated_at
from o101
left join o101f1434 on o101._dlt_id = o101f1434._dlt_parent_id