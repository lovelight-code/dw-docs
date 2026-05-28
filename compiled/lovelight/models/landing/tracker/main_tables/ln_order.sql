-- ============================================================
-- Model: ln_order
-- Description: Landing-layer view that flattens object_5
--              and its subtables into one record per order.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_5 table
-- ------------------------------------------------------------
o5 as (
    select *
    from landing_tracker.object_5
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_5__field_1091
-- ------------------------------------------------------------
o5f1091 as (
    select
        _dlt_parent_id,
        max(value) as likelihood
    from landing_tracker.object_5__field_1091
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_1092
-- ------------------------------------------------------------
o5f1092 as (
    select
        _dlt_parent_id,
        max(value) as lifting_mechanism
    from landing_tracker.object_5__field_1092
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_111
-- ------------------------------------------------------------
o5f111 as (
    select
        _dlt_parent_id,
        max(value) as delivery_location
    from landing_tracker.object_5__field_111
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_1531
-- ------------------------------------------------------------
o5f1531 as (
    select
        _dlt_parent_id,
        max(value) as remakes_only_apology_call_complete
    from landing_tracker.object_5__field_1531
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_1532
-- ------------------------------------------------------------
o5f1532 as (
    select
        _dlt_parent_id,
        max(value) as remakes_only_apology_call_outcome
    from landing_tracker.object_5__field_1532
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_1533
-- ------------------------------------------------------------
o5f1533 as (
    select
        _dlt_parent_id,
        max(value) as remakes_only_follow_up_email_sent
    from landing_tracker.object_5__field_1533
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_1534
-- ------------------------------------------------------------
o5f1534 as (
    select
        _dlt_parent_id,
        max(value) as remakes_only_progress_email_sent
    from landing_tracker.object_5__field_1534
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_1553
-- ------------------------------------------------------------
o5f1553 as (
    select
        _dlt_parent_id,
        max(value) as remakes_only_status
    from landing_tracker.object_5__field_1553
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_1554
-- ------------------------------------------------------------
o5f1554 as (
    select
        _dlt_parent_id,
        max(value) as remakes_only_post_install_email_sent
    from landing_tracker.object_5__field_1554
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_5__field_1618
-- ------------------------------------------------------------
o5f1618 as (
    select
        _dlt_parent_id,
        max(value) as tape_supplied_by_workroom
    from landing_tracker.object_5__field_1618
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o5.id,
    o5.created as src_created_at,
    o5.updated as src_updated_at,
    o5.field_1001_all_day as stocktake_date_all_day,
    o5.field_1001_date as stocktake_date,
    o5.field_1395 as api_update_source,
    o5.field_1528_all_day as remakes_only_date_apology_phone_call_all_day,
    o5.field_1528_date as remakes_only_date_apology_phone_call_date,
    o5.field_1529_all_day as remakes_only_date_follow_up_email_all_day,
    o5.field_1529_date as remakes_only_date_follow_up_email_date,
    o5.field_1530_all_day as remake_only_date_progress_email_all_day,
    o5.field_1530_date as remake_only_date_progress_email_date,
    o5.field_1535 as remakes_only_days_since_first_contact,
    o5.field_1536_all_day as remakes_only_last_contact_date_all_day,
    o5.field_1536_date as remakes_only_last_contact_date,
    o5.field_1537 as job_suffix,
    o5.field_1538 as remakes_only_days_since_last_contact,
    o5.field_1555_all_day as remakes_only_date_post_install_email_all_day,
    o5.field_1555_date as remakes_only_date_post_install_email_date,
    o5.field_1556_all_day as date_taken_to_site_all_day,
    o5.field_1556_date as date_taken_to_site_date,
    o5.field_1563 as count_of_associated_scheduled_callout,
    o5.field_1617 as meters_of_fabric,
    o5.field_1619_all_day as date_fabric_ordered_all_day,
    o5.field_1619_date as date_fabric_ordered_date,
    o5.field_1621 as portal_batch_number,
    o5.field_1637 as days_since_ordered,
    o5.field_17 as qty_ordered,
    o5.field_18 as note,
    o5.field_1821 as deleted,
    o5.field_187_all_day as ordered_date_all_day,
    o5.field_187_date as ordered_date,
    o5.field_197 as status_summary,
    o5.field_1992_all_day as expected_delivery_date_all_day,
    o5.field_1992_date as expected_delivery_date,
    o5.field_2124 as remake_other_detail,
    o5.field_2133 as remake_order_reference,
    o5.field_2222 as qty_received,
    o5.field_2223 as received,
    o5.field_22_all_day as received_date_all_day,
    o5.field_22_date as received_date,
    o5.field_2526 as cat_supplier_cost_ex_gst,
    o5.field_2527 as total_length,
    o5.field_2558 as is_order_received,
    o5.field_263 as has_status_changed,
    o5.field_264_all_day as status_change_date_all_day,
    o5.field_264_date as status_change_date,
    o5.field_2698 as project_as_text,
    o5.field_2699 as job_reference,
    o5.field_271 as document_count,
    o5.field_276 as days_in_status,
    o5.field_2791_all_day as created_date_all_day,
    o5.field_2791_date as created_date,
    o5.field_2844 as bulk_csv_upload,
    o5.field_2935 as return_reference,
    o5.field_312 as order_number,
    o5.field_591 as business_unit,
    o5.field_750 as job_state,
    o5.field_839 as development,
    o5.field_842 as development_status,
    o5.field_9 as order_id,
    o5.field_901_all_day as estimated_install_date_all_day,
    o5.field_901_date as estimated_install_date,
    o5.field_998 as delivery_expected_imminently_for_delivery_manifest,
    o5.field_999 as expected_cartons_item,
    o5f1091.likelihood as likelihood,
    o5f1092.lifting_mechanism as lifting_mechanism,
    o5f111.delivery_location as delivery_location,
    o5f1531.remakes_only_apology_call_complete as remakes_only_apology_call_complete,
    o5f1532.remakes_only_apology_call_outcome as remakes_only_apology_call_outcome,
    o5f1533.remakes_only_follow_up_email_sent as remakes_only_follow_up_email_sent,
    o5f1534.remakes_only_progress_email_sent as remakes_only_progress_email_sent,
    o5f1553.remakes_only_status as remakes_only_status,
    o5f1554.remakes_only_post_install_email_sent as remakes_only_post_install_email_sent,
    o5f1618.tape_supplied_by_workroom as tape_supplied_by_workroom,
    o5._dlt_id as dlt_id,
    o5._dlt_load_id as dlt_load_id,
    o5.created_at as created_at,
    o5.updated_at as updated_at
from o5
left join o5f1091 on o5._dlt_id = o5f1091._dlt_parent_id
left join o5f1092 on o5._dlt_id = o5f1092._dlt_parent_id
left join o5f111 on o5._dlt_id = o5f111._dlt_parent_id
left join o5f1531 on o5._dlt_id = o5f1531._dlt_parent_id
left join o5f1532 on o5._dlt_id = o5f1532._dlt_parent_id
left join o5f1533 on o5._dlt_id = o5f1533._dlt_parent_id
left join o5f1534 on o5._dlt_id = o5f1534._dlt_parent_id
left join o5f1553 on o5._dlt_id = o5f1553._dlt_parent_id
left join o5f1554 on o5._dlt_id = o5f1554._dlt_parent_id
left join o5f1618 on o5._dlt_id = o5f1618._dlt_parent_id