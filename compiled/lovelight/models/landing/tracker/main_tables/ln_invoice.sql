-- ============================================================
-- Model: ln_invoice
-- Description: Landing-layer view that flattens object_19
--              and its subtables into one record per invoice.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_19 table
-- ------------------------------------------------------------
o19 as (
    select *
    from landing_tracker.object_19
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_19__field_1399
-- ------------------------------------------------------------
o19f1399 as (
    select
        _dlt_parent_id,
        max(value) as due_date_option
    from landing_tracker.object_19__field_1399
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_19__field_1403
-- ------------------------------------------------------------
o19f1403 as (
    select
        _dlt_parent_id,
        max(value) as percentage_of_job_value
    from landing_tracker.object_19__field_1403
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_19__field_153
-- ------------------------------------------------------------
o19f153 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_19__field_153
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_19__field_2182
-- ------------------------------------------------------------
o19f2182 as (
    select
        _dlt_parent_id,
        max(value) as chase
    from landing_tracker.object_19__field_2182
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_19__field_2499
-- ------------------------------------------------------------
o19f2499 as (
    select
        _dlt_parent_id,
        max(value) as balance_due_before_or_after_install
    from landing_tracker.object_19__field_2499
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_19__field_313
-- ------------------------------------------------------------
o19f313 as (
    select
        _dlt_parent_id,
        max(value) as invoice_type
    from landing_tracker.object_19__field_313
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_19__field_314
-- ------------------------------------------------------------
o19f314 as (
    select
        _dlt_parent_id,
        max(value) as service_option
    from landing_tracker.object_19__field_314
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o19.id,
    o19.created as src_created_at,
    o19.updated as src_updated_at,
    o19.field_1316 as reporting_this_financial_year_scheduled_date,
    o19.field_1317 as reporting_last_financial_year_scheduled_date,
    o19.field_1318 as reporting_last_quarter_scheduled_date,
    o19.field_1378 as reporting_financial_year_scheduled_date,
    o19.field_1379 as reporting_fy_scheduled_date,
    o19.field_1380 as reporting_financial_quarter_scheduled_date,
    o19.field_1381 as reporting_fyq_scheduled_date,
    o19.field_1398 as issue_invoice_to,
    o19.field_154 as amount_due,
    o19.field_156 as percentage,
    o19.field_157_all_day as issue_date_all_day,
    o19.field_157_date as issue_date,
    o19.field_158 as src_sys_id,
    o19.field_1643 as paid,
    o19.field_1644_all_day as date_paid_all_day,
    o19.field_1644_date as date_paid_date,
    o19.field_168 as is_sent,
    o19.field_169 as send_in_day,
    o19.field_1740 as overdue_status,
    o19.field_1776 as xero_invoice_id,
    o19.field_1777 as xero_invoice_number,
    o19.field_1778 as xero_invoice_link,
    o19.field_1804_all_day as date_created_all_day,
    o19.field_1804_date as date_created_date,
    o19.field_1820 as deleted,
    o19.field_1825_all_day as deleted_date_all_day,
    o19.field_1825_date as deleted_date,
    o19.field_1979 as count_of_note,
    o19.field_2296_all_day as chase_last_updated_all_day,
    o19.field_2296_date as chase_last_updated_date,
    o19.field_2411 as contacted_this_week,
    o19.field_2412_all_day as last_contact_date_all_day,
    o19.field_2412_date as last_contact_date,
    o19.field_2459 as send_to_ar,
    o19.field_2462_all_day as follow_up_after_all_day,
    o19.field_2462_date as follow_up_after_date,
    o19.field_2486 as last_note,
    o19.field_2534 as myob_invoice_reference_number,
    o19.field_2535 as myob_invoice_link,
    o19.field_2554 as myob_uniqueness_uuid,
    o19.field_2760 as reschule_next_week_date,
    o19.field_2761 as reschedule_next_month_date,
    o19.field_315 as custom_service,
    o19.field_316 as actual_service,
    o19.field_318 as xero_invoice,
    o19.field_319 as po_number,
    o19.field_434 as state,
    o19.field_582 as job_project_name_copy,
    o19.field_610 as invoicing_exempt,
    o19.field_698 as business_unit,
    o19.field_835_all_day as due_date_all_day,
    o19.field_835_date as due_date,
    o19f1399.due_date_option as due_date_option,
    o19f1403.percentage_of_job_value as percentage_of_job_value,
    o19f153.status as status,
    o19f2182.chase as chase,
    o19f2499.balance_due_before_or_after_install as balance_due_before_or_after_install,
    o19f313.invoice_type as invoice_type,
    o19f314.service_option as service_option,
    o19._dlt_id as dlt_id,
    o19._dlt_load_id as dlt_load_id,
    o19.created_at as created_at,
    o19.updated_at as updated_at
from o19
left join o19f1399 on o19._dlt_id = o19f1399._dlt_parent_id
left join o19f1403 on o19._dlt_id = o19f1403._dlt_parent_id
left join o19f153 on o19._dlt_id = o19f153._dlt_parent_id
left join o19f2182 on o19._dlt_id = o19f2182._dlt_parent_id
left join o19f2499 on o19._dlt_id = o19f2499._dlt_parent_id
left join o19f313 on o19._dlt_id = o19f313._dlt_parent_id
left join o19f314 on o19._dlt_id = o19f314._dlt_parent_id