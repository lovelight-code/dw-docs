-- ============================================================
-- Model: ln_job
-- Description: Landing-layer view that flattens object_3
--              and its subtables into one record per job.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_3 table
-- ------------------------------------------------------------
o3 as (
    select *
    from landing_tracker.object_3
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_3__field_1635
-- ------------------------------------------------------------
o3f1635 as (
    select
        _dlt_parent_id,
        max(value) as create_by_portal
    from landing_tracker.object_3__field_1635
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_2484
-- ------------------------------------------------------------
o3f2484 as (
    select
        _dlt_parent_id,
        max(value) as designer_commission_status
    from landing_tracker.object_3__field_2484
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_2495
-- ------------------------------------------------------------
o3f2495 as (
    select
        _dlt_parent_id,
        max(value) as project_manager_required
    from landing_tracker.object_3__field_2495
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_2731
-- ------------------------------------------------------------
o3f2731 as (
    select
        _dlt_parent_id,
        max(value) as installer_s_status
    from landing_tracker.object_3__field_2731
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_2740
-- ------------------------------------------------------------
o3f2740 as (
    select
        _dlt_parent_id,
        max(value) as moved_to_quoterite
    from landing_tracker.object_3__field_2740
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_2752
-- ------------------------------------------------------------
o3f2752 as (
    select
        _dlt_parent_id,
        max(value) as bulk_created
    from landing_tracker.object_3__field_2752
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_3036
-- ------------------------------------------------------------
o3f3036 as (
    select
        _dlt_parent_id,
        max(value) as swp_confirmed
    from landing_tracker.object_3__field_3036
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_3069
-- ------------------------------------------------------------
o3f3069 as (
    select
        _dlt_parent_id,
        max(value) as swp_payment_status
    from landing_tracker.object_3__field_3069
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_428
-- ------------------------------------------------------------
o3f428 as (
    select
        _dlt_parent_id,
        max(value) as development_purchase_type
    from landing_tracker.object_3__field_428
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_58
-- ------------------------------------------------------------
o3f58 as (
    select
        _dlt_parent_id,
        max(value) as state
    from landing_tracker.object_3__field_58
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_59
-- ------------------------------------------------------------
o3f59 as (
    select
        _dlt_parent_id,
        max(value) as business_unit
    from landing_tracker.object_3__field_59
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_700
-- ------------------------------------------------------------
o3f700 as (
    select
        _dlt_parent_id,
        max(value) as swp_option
    from landing_tracker.object_3__field_700
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_799
-- ------------------------------------------------------------
o3f799 as (
    select
        _dlt_parent_id,
        max(value) as any_variations_identified
    from landing_tracker.object_3__field_799
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_804
-- ------------------------------------------------------------
o3f804 as (
    select
        _dlt_parent_id,
        max(value) as review_email_sent
    from landing_tracker.object_3__field_804
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_825
-- ------------------------------------------------------------
o3f825 as (
    select
        _dlt_parent_id,
        max(value) as first_time_install
    from landing_tracker.object_3__field_825
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_826
-- ------------------------------------------------------------
o3f826 as (
    select
        _dlt_parent_id,
        max(value) as who_s_at_fault
    from landing_tracker.object_3__field_826
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_3__field_828
-- ------------------------------------------------------------
o3f828 as (
    select
        _dlt_parent_id,
        max(value) as what_went_wrong
    from landing_tracker.object_3__field_828
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o3.id,
    o3.created as src_created_at,
    o3.updated as src_updated_at,
    o3.field_1008 as custom_like_job,
    o3.field_1017 as invoice_reconciliation_note,
    o3.field_1036 as mail_out_lead,
    o3.field_1295 as reporting_financial_year_created_date,
    o3.field_1296 as reporting_this_financial_year_created_date,
    o3.field_1297 as reporting_last_financial_year_created_date,
    o3.field_1298 as reporting_financial_quarter_created_date,
    o3.field_1299 as reporting_last_quarter_created_date,
    o3.field_12_city as site_address_city,
    o3.field_12_country as site_address_country,
    o3.field_12_full as site_address_full,
    o3.field_12_latitude as site_address_latitude,
    o3.field_12_longitude as site_address_longitude,
    o3.field_12_state as site_address_state,
    o3.field_12_street as site_address_street,
    o3.field_12_street2 as site_address_street2,
    o3.field_12_zip as site_address_zip,
    o3.field_130 as value_ex_gst,
    o3.field_1300 as reporting_financial_month_created_date,
    o3.field_1301 as reporting_calendar_week_created_date,
    o3.field_1302 as reporting_financial_week_created_date,
    o3.field_1303 as reporting_this_week_created_date,
    o3.field_1304 as reporting_last_week_created_date,
    o3.field_1305 as reporting_fy_created_date,
    o3.field_1306 as reporting_fyq_created_date,
    o3.field_1307 as reporting_fym_created_date,
    o3.field_1308 as reporting_fyw_created_date,
    o3.field_1309 as reporting_financial_month_name_created_date,
    o3.field_1331 as customer_business_separator,
    o3.field_1332 as business_contact,
    o3.field_1393 as temp,
    o3.field_148 as notes_legacy_no_longer_used,
    o3.field_151 as has_opportunity,
    o3.field_1527 as job_name_suffix,
    o3.field_1589 as final_cat,
    o3.field_1590 as final_accepted_quote,
    o3.field_1592 as sales_and_ops_team,
    o3.field_162 as amount_invoiced,
    o3.field_165 as amount_scheduled,
    o3.field_1652 as temporary_notes_copy_to_history,
    o3.field_1656 as created_by,
    o3.field_166 as amount_missing,
    o3.field_1745 as job_rec_uuid,
    o3.field_1803 as unpaid_invoice,
    o3.field_194 as src_sys_id,
    o3.field_1953 as synced_tool_folder,
    o3.field_198 as site_city,
    o3.field_1998 as designer_commission_payable,
    o3.field_1999 as designer_commission_pct,
    o3.field_204 as use_the_same_job_reference,
    o3.field_205 as use_the_same_customer,
    o3.field_209 as use_opportunity_value,
    o3.field_210 as is_customer_the_site_contact,
    o3.field_2134 as job_name_prefix,
    o3.field_2135 as job_reference_with_development,
    o3.field_2146 as project_manager_note,
    o3.field_2147_all_day as pre_site_check_request_date_all_day,
    o3.field_2147_date as pre_site_check_request_date,
    o3.field_2148_all_day as mid_site_check_request_date_all_day,
    o3.field_2148_date as mid_site_check_request_date,
    o3.field_2149_all_day as requested_qa_testing_date_all_day,
    o3.field_2149_date as requested_qa_testing_date,
    o3.field_2170 as designer_commission_paid,
    o3.field_2181 as imported,
    o3.field_2332 as designer_commissions_amt,
    o3.field_236 as excel_id,
    o3.field_2372 as amount_paid,
    o3.field_2443 as discount,
    o3.field_2452 as pre_start_check_completed,
    o3.field_2506 as cat_qty,
    o3.field_2507 as depreciated_cat_curtains_qty,
    o3.field_2517 as commission_invoice_ref,
    o3.field_2528_all_day as scheduled_call_out_all_day,
    o3.field_2528_date as scheduled_call_out_date,
    o3.field_2528_to as scheduled_call_out_to,
    o3.field_2529_all_day as original_complete_date_all_day,
    o3.field_2529_date as original_complete_date,
    o3.field_2530_all_day as estimated_date_of_completion_all_day,
    o3.field_2530_date as estimated_date_of_completion_date,
    o3.field_2532_all_day as last_call_out_completed_all_day,
    o3.field_2532_date as last_call_out_completed_date,
    o3.field_2532_to as last_call_out_completed_to,
    o3.field_2536 as most_recent_installer,
    o3.field_2537 as last_note,
    o3.field_2559 as received_order,
    o3.field_2560 as all_orders_received,
    o3.field_2581_url as link_to_confluence_url,
    o3.field_2595 as amount_excluded,
    o3.field_2606 as bulk_csv_upload,
    o3.field_2607 as status_as_text,
    o3.field_260_all_day as status_change_date_all_day,
    o3.field_260_date as status_change_date,
    o3.field_261 as days_in_status,
    o3.field_2700 as project_as_text,
    o3.field_2733_all_day as installer_details_last_update_date_all_day,
    o3.field_2733_date as installer_details_last_update_date,
    o3.field_2734 as installer_s_note,
    o3.field_274 as invoices_scheduled_this_month,
    o3.field_2846 as quote_rite_job_id,
    o3.field_2847 as myob_project_id,
    o3.field_2848 as myob_project_task_id,
    o3.field_2850 as project_note,
    o3.field_2862 as depreciated_ordered_curtain,
    o3.field_2863 as qty_difference,
    o3.field_2864 as curtain_qty_difference,
    o3.field_2865 as qty_display,
    o3.field_2866 as curtains_qty_display,
    o3.field_293 as we_got_issue,
    o3.field_296 as job_name,
    o3.field_2982 as is_measured,
    o3.field_3017 as website_development_id,
    o3.field_3018 as website_apartment_id,
    o3.field_302 as scheduling_by_scheduler,
    o3.field_3033 as website_purchase_name,
    o3.field_3037 as discount_applied,
    o3.field_3038 as qr_sold_margin,
    o3.field_3043 as furnishing_type,
    o3.field_3045 as furnishing_detail,
    o3.field_3055 as project_groups_upload,
    o3.field_3076 as marketing_custom_discount_ex_gst,
    o3.field_3098 as apt,
    o3.field_3101_all_day as designer_invoice_date_all_day,
    o3.field_3101_date as designer_invoice_date,
    o3.field_3122 as myob_marketing_invoice_ref_nbr,
    o3.field_3130 as is_parent_job,
    o3.field_3131 as count_of_related_job,
    o3.field_3145 as id_copy,
    o3.field_3147 as development,
    o3.field_3150 as src_sys_id_2,
    o3.field_3155_email as product_user_guide_email,
    o3.field_329_all_day as created_date_all_day,
    o3.field_329_date as created_date,
    o3.field_330_all_day as completed_date_all_day,
    o3.field_330_date as completed_date,
    o3.field_332 as invoices_m_0,
    o3.field_333 as invoices_m_1,
    o3.field_334 as invoices_m_2,
    o3.field_335 as invoices_m_3,
    o3.field_336 as invoices_m_4,
    o3.field_337 as invoices_m_5,
    o3.field_338 as invoices_m_6,
    o3.field_340 as invoices_m_7_and_beyond,
    o3.field_359_all_day as install_date_all_day,
    o3.field_359_date as install_date,
    o3.field_360_all_day as measure_date_all_day,
    o3.field_360_date as measure_date,
    o3.field_383 as invoices_already_sent,
    o3.field_426 as invoicing_exemption,
    o3.field_433 as invoices_scheduled_all,
    o3.field_5 as job_reference,
    o3.field_555 as po_number,
    o3.field_592 as overdue,
    o3.field_608 as notes_for_fitter,
    o3.field_715 as sales_agent_email_alia,
    o3.field_716 as number_of_order,
    o3.field_735 as previous_job_reference,
    o3.field_780 as ordered_qty,
    o3.field_787 as job_margin,
    o3.field_800 as variation_documentation,
    o3.field_801 as installation_time_required,
    o3.field_802 as customer_contact_first_name,
    o3.field_827 as issue_detail,
    o3.field_836 as motorisation,
    o3.field_838 as development_name_for_child_object_reference,
    o3.field_841 as development_status,
    o3.field_858 as return_visit_required,
    o3.field_992 as measure_invoice_received,
    o3.field_993 as install_invoice_received,
    o3.field_994_all_day as date_measure_invoice_received_all_day,
    o3.field_994_date as date_measure_invoice_received_date,
    o3.field_995_all_day as date_install_invoice_received_all_day,
    o3.field_995_date as date_install_invoice_received_date,
    o3f1635.create_by_portal as create_by_portal,
    o3f2484.designer_commission_status as designer_commission_status,
    o3f2495.project_manager_required as project_manager_required,
    o3f2731.installer_s_status as installer_s_status,
    o3f2740.moved_to_quoterite as moved_to_quoterite,
    o3f2752.bulk_created as bulk_created,
    o3f3036.swp_confirmed as swp_confirmed,
    o3f3069.swp_payment_status as swp_payment_status,
    o3f428.development_purchase_type as development_purchase_type,
    o3f58.state as state,
    o3f59.business_unit as business_unit,
    o3f700.swp_option as swp_option,
    o3f799.any_variations_identified as any_variations_identified,
    o3f804.review_email_sent as review_email_sent,
    o3f825.first_time_install as first_time_install,
    o3f826.who_s_at_fault as who_s_at_fault,
    o3f828.what_went_wrong as what_went_wrong,
    o3._dlt_id as dlt_id,
    o3._dlt_load_id as dlt_load_id,
    o3.created_at as created_at,
    o3.updated_at as updated_at
from o3
left join o3f1635 on o3._dlt_id = o3f1635._dlt_parent_id
left join o3f2484 on o3._dlt_id = o3f2484._dlt_parent_id
left join o3f2495 on o3._dlt_id = o3f2495._dlt_parent_id
left join o3f2731 on o3._dlt_id = o3f2731._dlt_parent_id
left join o3f2740 on o3._dlt_id = o3f2740._dlt_parent_id
left join o3f2752 on o3._dlt_id = o3f2752._dlt_parent_id
left join o3f3036 on o3._dlt_id = o3f3036._dlt_parent_id
left join o3f3069 on o3._dlt_id = o3f3069._dlt_parent_id
left join o3f428 on o3._dlt_id = o3f428._dlt_parent_id
left join o3f58 on o3._dlt_id = o3f58._dlt_parent_id
left join o3f59 on o3._dlt_id = o3f59._dlt_parent_id
left join o3f700 on o3._dlt_id = o3f700._dlt_parent_id
left join o3f799 on o3._dlt_id = o3f799._dlt_parent_id
left join o3f804 on o3._dlt_id = o3f804._dlt_parent_id
left join o3f825 on o3._dlt_id = o3f825._dlt_parent_id
left join o3f826 on o3._dlt_id = o3f826._dlt_parent_id
left join o3f828 on o3._dlt_id = o3f828._dlt_parent_id