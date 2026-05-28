-- ============================================================
-- Model: ln_call_out
-- Description: Landing-layer view that flattens object_78
--              and its subtables into one record per call_out.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_78 table
-- ------------------------------------------------------------
o78 as (
    select *
    from landing_tracker.object_78
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_78__field_1005
-- ------------------------------------------------------------
o78f1005 as (
    select
        _dlt_parent_id,
        max(value) as callout_status
    from landing_tracker.object_78__field_1005
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1476
-- ------------------------------------------------------------
o78f1476 as (
    select
        _dlt_parent_id,
        max(value) as send_calendar_invite_to_sales_and_op
    from landing_tracker.object_78__field_1476
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1494
-- ------------------------------------------------------------
o78f1494 as (
    select
        _dlt_parent_id,
        max(value) as state
    from landing_tracker.object_78__field_1494
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1495
-- ------------------------------------------------------------
o78f1495 as (
    select
        _dlt_parent_id,
        max(value) as business_unit
    from landing_tracker.object_78__field_1495
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1542
-- ------------------------------------------------------------
o78f1542 as (
    select
        _dlt_parent_id,
        max(value) as outcome
    from landing_tracker.object_78__field_1542
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1546
-- ------------------------------------------------------------
o78f1546 as (
    select
        _dlt_parent_id,
        max(value) as report_status
    from landing_tracker.object_78__field_1546
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1547
-- ------------------------------------------------------------
o78f1547 as (
    select
        _dlt_parent_id,
        max(value) as what_went_wrong
    from landing_tracker.object_78__field_1547
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1548
-- ------------------------------------------------------------
o78f1548 as (
    select
        _dlt_parent_id,
        max(value) as any_photos_uploaded
    from landing_tracker.object_78__field_1548
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1549
-- ------------------------------------------------------------
o78f1549 as (
    select
        _dlt_parent_id,
        max(value) as any_docs_uploaded
    from landing_tracker.object_78__field_1549
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1579
-- ------------------------------------------------------------
o78f1579 as (
    select
        _dlt_parent_id,
        max(value) as service_calls_chargeable
    from landing_tracker.object_78__field_1579
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1582
-- ------------------------------------------------------------
o78f1582 as (
    select
        _dlt_parent_id,
        max(value) as service_calls_what_s_the_issue
    from landing_tracker.object_78__field_1582
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1622
-- ------------------------------------------------------------
o78f1622 as (
    select
        _dlt_parent_id,
        max(value) as service_calls_broken_chain_length
    from landing_tracker.object_78__field_1622
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1623
-- ------------------------------------------------------------
o78f1623 as (
    select
        _dlt_parent_id,
        max(value) as service_calls_why_not_chargeable
    from landing_tracker.object_78__field_1623
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1625
-- ------------------------------------------------------------
o78f1625 as (
    select
        _dlt_parent_id,
        max(value) as service_calls_invoice_timing
    from landing_tracker.object_78__field_1625
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1626
-- ------------------------------------------------------------
o78f1626 as (
    select
        _dlt_parent_id,
        max(value) as service_calls_consumables_supplied
    from landing_tracker.object_78__field_1626
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1633
-- ------------------------------------------------------------
o78f1633 as (
    select
        _dlt_parent_id,
        max(value) as calendar_event_type
    from landing_tracker.object_78__field_1633
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1660
-- ------------------------------------------------------------
o78f1660 as (
    select
        _dlt_parent_id,
        max(value) as sales_want_to_attend
    from landing_tracker.object_78__field_1660
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1930
-- ------------------------------------------------------------
o78f1930 as (
    select
        _dlt_parent_id,
        max(value) as legacy_do_we_need_to_return_to_site
    from landing_tracker.object_78__field_1930
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_1931
-- ------------------------------------------------------------
o78f1931 as (
    select
        _dlt_parent_id,
        max(value) as legacy_any_issues_we_need_to_be_aware_of
    from landing_tracker.object_78__field_1931
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2374
-- ------------------------------------------------------------
o78f2374 as (
    select
        _dlt_parent_id,
        max(value) as return_to_site
    from landing_tracker.object_78__field_2374
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2518
-- ------------------------------------------------------------
o78f2518 as (
    select
        _dlt_parent_id,
        max(value) as did_you_complete_your_call_out_successfully
    from landing_tracker.object_78__field_2518
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2519
-- ------------------------------------------------------------
o78f2519 as (
    select
        _dlt_parent_id,
        max(value) as what_was_the_reason_you_were_unable_to_complete_your_call_out_as_a_first_time_install
    from landing_tracker.object_78__field_2519
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2520
-- ------------------------------------------------------------
o78f2520 as (
    select
        _dlt_parent_id,
        max(value) as reason_lovelight
    from landing_tracker.object_78__field_2520
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2521
-- ------------------------------------------------------------
o78f2521 as (
    select
        _dlt_parent_id,
        max(value) as reason_installer
    from landing_tracker.object_78__field_2521
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2522
-- ------------------------------------------------------------
o78f2522 as (
    select
        _dlt_parent_id,
        max(value) as reason_supplier
    from landing_tracker.object_78__field_2522
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2523
-- ------------------------------------------------------------
o78f2523 as (
    select
        _dlt_parent_id,
        max(value) as reason_client
    from landing_tracker.object_78__field_2523
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2524
-- ------------------------------------------------------------
o78f2524 as (
    select
        _dlt_parent_id,
        max(value) as reason_site_builder
    from landing_tracker.object_78__field_2524
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2551
-- ------------------------------------------------------------
o78f2551 as (
    select
        _dlt_parent_id,
        max(value) as reason_time
    from landing_tracker.object_78__field_2551
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2589
-- ------------------------------------------------------------
o78f2589 as (
    select
        _dlt_parent_id,
        max(value) as report_quality
    from landing_tracker.object_78__field_2589
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2590
-- ------------------------------------------------------------
o78f2590 as (
    select
        _dlt_parent_id,
        max(value) as review_status
    from landing_tracker.object_78__field_2590
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2645
-- ------------------------------------------------------------
o78f2645 as (
    select
        _dlt_parent_id,
        max(value) as booking_priority
    from landing_tracker.object_78__field_2645
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2651
-- ------------------------------------------------------------
o78f2651 as (
    select
        _dlt_parent_id,
        max(value) as site_contact_type
    from landing_tracker.object_78__field_2651
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_2729
-- ------------------------------------------------------------
o78f2729 as (
    select
        _dlt_parent_id,
        max(value) as client_communication_method
    from landing_tracker.object_78__field_2729
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_3100
-- ------------------------------------------------------------
o78f3100 as (
    select
        _dlt_parent_id,
        max(value) as update_site_contact_on_all_connected_record
    from landing_tracker.object_78__field_3100
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_3135
-- ------------------------------------------------------------
o78f3135 as (
    select
        _dlt_parent_id,
        max(value) as did_you_ask_for_a_photo_of_the_product_send_to_info_and_attach_below
    from landing_tracker.object_78__field_3135
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_3138
-- ------------------------------------------------------------
o78f3138 as (
    select
        _dlt_parent_id,
        max(value) as who_organised_the_installation_of_the_product
    from landing_tracker.object_78__field_3138
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_3140
-- ------------------------------------------------------------
o78f3140 as (
    select
        _dlt_parent_id,
        max(value) as vic_custom_job
    from landing_tracker.object_78__field_3140
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_78__field_925
-- ------------------------------------------------------------
o78f925 as (
    select
        _dlt_parent_id,
        max(value) as call_out_type_option
    from landing_tracker.object_78__field_925
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o78.id,
    o78.created as src_created_at,
    o78.updated as src_updated_at,
    o78.field_1031 as src_sys_id,
    o78.field_1081 as sales_person_email,
    o78.field_1082 as g_cal_event_id,
    o78.field_1101 as g_cal_update_in_progress,
    o78.field_1475 as ops_person_email,
    o78.field_1477 as other_call_out_type,
    o78.field_1481 as calendar_display_name,
    o78.field_1485 as callout_type,
    o78.field_1488 as form_display_name,
    o78.field_1489 as time,
    o78.field_1496 as g_cal_update_required,
    o78.field_1500 as count_of_directly_linked_document,
    o78.field_1502_all_day as created_date_all_day,
    o78.field_1502_date as created_date,
    o78.field_1503 as other_attendee,
    o78.field_1545 as installer_s_report,
    o78.field_1550 as count_of_photo,
    o78.field_1551 as count_of_file,
    o78.field_1552_all_day as requested_date_all_day,
    o78.field_1552_date as requested_date,
    o78.field_1580 as notes_to_scheduler,
    o78.field_1581 as created_by,
    o78.field_1588 as suburb,
    o78.field_1591 as service_calls_call_out_cost_ex_gst,
    o78.field_1616 as estimated_time_to_install,
    o78.field_1624 as service_calls_why_no_chargeable_other_detail,
    o78.field_1627 as service_calls_what_was_supplied,
    o78.field_1630 as count_of_invoice,
    o78.field_1632 as report_submitted_by,
    o78.field_1634 as visible_to_installer,
    o78.field_1638 as g_cal_event_id_v2,
    o78.field_1661 as days_since_created,
    o78.field_1840 as count_of_job,
    o78.field_1853 as invoice_reference,
    o78.field_1944 as count_of_issue,
    o78.field_2137 as actual_hours_on_site,
    o78.field_2178 as estimated_hours_required,
    o78.field_2377 as fault_description,
    o78.field_2414 as union_site,
    o78.field_2461 as pre_start_check_required,
    o78.field_2470 as installer_sign_off,
    o78.field_2485 as schedulers_last_note,
    o78.field_2525 as what_us_return_site_successfully_job,
    o78.field_2587 as is_reviewed,
    o78.field_2591 as review_note,
    o78.field_2592_all_day as report_date_all_day,
    o78.field_2592_date as report_date,
    o78.field_2596_all_day as approval_date_all_day,
    o78.field_2596_date as approval_date,
    o78.field_2636 as is_rescheduled,
    o78.field_2643 as custom_installer,
    o78.field_2688 as installer_to_installer_note,
    o78.field_2692 as detail_display_name,
    o78.field_2693 as is_in_future,
    o78.field_2792 as end_date,
    o78.field_3054 as is_job_status_update_required,
    o78.field_3136 as issue_with_the_furnishing,
    o78.field_3137 as room_s_that_the_issue_is_in,
    o78.field_924_all_day as scheduled_date_and_time_all_day,
    o78.field_924_date as scheduled_date_and_time_date,
    o78.field_924_repeat__end_count as scheduled_date_and_time_repeat_end_count,
    o78.field_924_repeat__end_date as scheduled_date_and_time_repeat_end_date,
    o78.field_924_repeat__endson as scheduled_date_and_time_repeat_endson,
    o78.field_924_repeat__fr as scheduled_date_and_time_repeat_fr,
    o78.field_924_repeat__frequency as scheduled_date_and_time_repeat_frequency,
    o78.field_924_repeat__interval as scheduled_date_and_time_repeat_interval,
    o78.field_924_repeat__mo as scheduled_date_and_time_repeat_mo,
    o78.field_924_repeat__repeatby as scheduled_date_and_time_repeat_repeatby,
    o78.field_924_repeat__sa as scheduled_date_and_time_repeat_sa,
    o78.field_924_repeat__start_date as scheduled_date_and_time_repeat_start_date,
    o78.field_924_repeat__su as scheduled_date_and_time_repeat_su,
    o78.field_924_repeat__th as scheduled_date_and_time_repeat_th,
    o78.field_924_repeat__tu as scheduled_date_and_time_repeat_tu,
    o78.field_924_repeat__undefined as scheduled_date_and_time_repeat_undefined,
    o78.field_924_repeat__we as scheduled_date_and_time_repeat_we,
    o78.field_924_to as scheduled_date_and_time_to,
    o78.field_929 as notes_to_installer_s,
    o78.field_939_all_day as group_by_date_all_day,
    o78.field_939_date as group_by_date,
    o78.field_953 as start_time,
    o78.field_955 as tentative,
    o78.field_980 as end_time,
    o78.field_981_city as address_city,
    o78.field_981_country as address_country,
    o78.field_981_full as address_full,
    o78.field_981_latitude as address_latitude,
    o78.field_981_longitude as address_longitude,
    o78.field_981_state as address_state,
    o78.field_981_street as address_street,
    o78.field_981_street2 as address_street2,
    o78.field_981_zip as address_zip,
    o78f1005.callout_status as callout_status,
    o78f1476.send_calendar_invite_to_sales_and_op as send_calendar_invite_to_sales_and_op,
    o78f1494.state as state,
    o78f1495.business_unit as business_unit,
    o78f1542.outcome as outcome,
    o78f1546.report_status as report_status,
    o78f1547.what_went_wrong as what_went_wrong,
    o78f1548.any_photos_uploaded as any_photos_uploaded,
    o78f1549.any_docs_uploaded as any_docs_uploaded,
    o78f1579.service_calls_chargeable as service_calls_chargeable,
    o78f1582.service_calls_what_s_the_issue as service_calls_what_s_the_issue,
    o78f1622.service_calls_broken_chain_length as service_calls_broken_chain_length,
    o78f1623.service_calls_why_not_chargeable as service_calls_why_not_chargeable,
    o78f1625.service_calls_invoice_timing as service_calls_invoice_timing,
    o78f1626.service_calls_consumables_supplied as service_calls_consumables_supplied,
    o78f1633.calendar_event_type as calendar_event_type,
    o78f1660.sales_want_to_attend as sales_want_to_attend,
    o78f1930.legacy_do_we_need_to_return_to_site as legacy_do_we_need_to_return_to_site,
    o78f1931.legacy_any_issues_we_need_to_be_aware_of as legacy_any_issues_we_need_to_be_aware_of,
    o78f2374.return_to_site as return_to_site,
    o78f2518.did_you_complete_your_call_out_successfully as did_you_complete_your_call_out_successfully,
    o78f2519.what_was_the_reason_you_were_unable_to_complete_your_call_out_as_a_first_time_install as what_was_the_reason_you_were_unable_to_complete_your_call_out_as_a_first_time_install,
    o78f2520.reason_lovelight as reason_lovelight,
    o78f2521.reason_installer as reason_installer,
    o78f2522.reason_supplier as reason_supplier,
    o78f2523.reason_client as reason_client,
    o78f2524.reason_site_builder as reason_site_builder,
    o78f2551.reason_time as reason_time,
    o78f2589.report_quality as report_quality,
    o78f2590.review_status as review_status,
    o78f2645.booking_priority as booking_priority,
    o78f2651.site_contact_type as site_contact_type,
    o78f2729.client_communication_method as client_communication_method,
    o78f3100.update_site_contact_on_all_connected_record as update_site_contact_on_all_connected_record,
    o78f3135.did_you_ask_for_a_photo_of_the_product_send_to_info_and_attach_below as did_you_ask_for_a_photo_of_the_product_send_to_info_and_attach_below,
    o78f3138.who_organised_the_installation_of_the_product as who_organised_the_installation_of_the_product,
    o78f3140.vic_custom_job as vic_custom_job,
    o78f925.call_out_type_option as call_out_type_option,
    o78._dlt_id as dlt_id,
    o78._dlt_load_id as dlt_load_id,
    o78.created_at as created_at,
    o78.updated_at as updated_at
from o78
left join o78f1005 on o78._dlt_id = o78f1005._dlt_parent_id
left join o78f1476 on o78._dlt_id = o78f1476._dlt_parent_id
left join o78f1494 on o78._dlt_id = o78f1494._dlt_parent_id
left join o78f1495 on o78._dlt_id = o78f1495._dlt_parent_id
left join o78f1542 on o78._dlt_id = o78f1542._dlt_parent_id
left join o78f1546 on o78._dlt_id = o78f1546._dlt_parent_id
left join o78f1547 on o78._dlt_id = o78f1547._dlt_parent_id
left join o78f1548 on o78._dlt_id = o78f1548._dlt_parent_id
left join o78f1549 on o78._dlt_id = o78f1549._dlt_parent_id
left join o78f1579 on o78._dlt_id = o78f1579._dlt_parent_id
left join o78f1582 on o78._dlt_id = o78f1582._dlt_parent_id
left join o78f1622 on o78._dlt_id = o78f1622._dlt_parent_id
left join o78f1623 on o78._dlt_id = o78f1623._dlt_parent_id
left join o78f1625 on o78._dlt_id = o78f1625._dlt_parent_id
left join o78f1626 on o78._dlt_id = o78f1626._dlt_parent_id
left join o78f1633 on o78._dlt_id = o78f1633._dlt_parent_id
left join o78f1660 on o78._dlt_id = o78f1660._dlt_parent_id
left join o78f1930 on o78._dlt_id = o78f1930._dlt_parent_id
left join o78f1931 on o78._dlt_id = o78f1931._dlt_parent_id
left join o78f2374 on o78._dlt_id = o78f2374._dlt_parent_id
left join o78f2518 on o78._dlt_id = o78f2518._dlt_parent_id
left join o78f2519 on o78._dlt_id = o78f2519._dlt_parent_id
left join o78f2520 on o78._dlt_id = o78f2520._dlt_parent_id
left join o78f2521 on o78._dlt_id = o78f2521._dlt_parent_id
left join o78f2522 on o78._dlt_id = o78f2522._dlt_parent_id
left join o78f2523 on o78._dlt_id = o78f2523._dlt_parent_id
left join o78f2524 on o78._dlt_id = o78f2524._dlt_parent_id
left join o78f2551 on o78._dlt_id = o78f2551._dlt_parent_id
left join o78f2589 on o78._dlt_id = o78f2589._dlt_parent_id
left join o78f2590 on o78._dlt_id = o78f2590._dlt_parent_id
left join o78f2645 on o78._dlt_id = o78f2645._dlt_parent_id
left join o78f2651 on o78._dlt_id = o78f2651._dlt_parent_id
left join o78f2729 on o78._dlt_id = o78f2729._dlt_parent_id
left join o78f3100 on o78._dlt_id = o78f3100._dlt_parent_id
left join o78f3135 on o78._dlt_id = o78f3135._dlt_parent_id
left join o78f3138 on o78._dlt_id = o78f3138._dlt_parent_id
left join o78f3140 on o78._dlt_id = o78f3140._dlt_parent_id
left join o78f925 on o78._dlt_id = o78f925._dlt_parent_id