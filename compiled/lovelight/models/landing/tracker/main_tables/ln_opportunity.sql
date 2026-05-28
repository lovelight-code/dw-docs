-- ============================================================
-- Model: ln_opportunity
-- Description: Landing-layer view that flattens object_17
--              and its subtables into one record per opportunity.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_17 table
-- ------------------------------------------------------------
o17 as (
    select *
    from landing_tracker.object_17
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_17__field_117
-- ------------------------------------------------------------
o17f117 as (
    select
        _dlt_parent_id,
        max(value) as state_legacy
    from landing_tracker.object_17__field_117
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_118
-- ------------------------------------------------------------
o17f118 as (
    select
        _dlt_parent_id,
        max(value) as business_unit
    from landing_tracker.object_17__field_118
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_127
-- ------------------------------------------------------------
o17f127 as (
    select
        _dlt_parent_id,
        max(value) as status_legacy
    from landing_tracker.object_17__field_127
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_1336
-- ------------------------------------------------------------
o17f1336 as (
    select
        _dlt_parent_id,
        max(value) as follow_up_status
    from landing_tracker.object_17__field_1336
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_1606
-- ------------------------------------------------------------
o17f1606 as (
    select
        _dlt_parent_id,
        max(value) as quote_status
    from landing_tracker.object_17__field_1606
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_1607
-- ------------------------------------------------------------
o17f1607 as (
    select
        _dlt_parent_id,
        max(value) as quote_date_type
    from landing_tracker.object_17__field_1607
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_1608
-- ------------------------------------------------------------
o17f1608 as (
    select
        _dlt_parent_id,
        max(value) as commission_rebate_payable
    from landing_tracker.object_17__field_1608
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_1873
-- ------------------------------------------------------------
o17f1873 as (
    select
        _dlt_parent_id,
        max(value) as swp_forecast_swp_conversion_rate
    from landing_tracker.object_17__field_1873
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2214
-- ------------------------------------------------------------
o17f2214 as (
    select
        _dlt_parent_id,
        max(value) as portal_upload
    from landing_tracker.object_17__field_2214
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2215
-- ------------------------------------------------------------
o17f2215 as (
    select
        _dlt_parent_id,
        max(value) as website_upload
    from landing_tracker.object_17__field_2215
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2216
-- ------------------------------------------------------------
o17f2216 as (
    select
        _dlt_parent_id,
        max(value) as handover
    from landing_tracker.object_17__field_2216
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2434
-- ------------------------------------------------------------
o17f2434 as (
    select
        _dlt_parent_id,
        max(value) as send_to_estimating
    from landing_tracker.object_17__field_2434
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2458
-- ------------------------------------------------------------
o17f2458 as (
    select
        _dlt_parent_id,
        max(value) as project_status_on_completion_of_quote
    from landing_tracker.object_17__field_2458
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2487
-- ------------------------------------------------------------
o17f2487 as (
    select
        _dlt_parent_id,
        max(value) as information
    from landing_tracker.object_17__field_2487
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2488
-- ------------------------------------------------------------
o17f2488 as (
    select
        _dlt_parent_id,
        max(value) as multibite_purchase_type
    from landing_tracker.object_17__field_2488
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2809
-- ------------------------------------------------------------
o17f2809 as (
    select
        _dlt_parent_id,
        max(value) as external_estimator_status
    from landing_tracker.object_17__field_2809
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_2856
-- ------------------------------------------------------------
o17f2856 as (
    select
        _dlt_parent_id,
        max(value) as project_quote_type
    from landing_tracker.object_17__field_2856
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_17__field_831
-- ------------------------------------------------------------
o17f831 as (
    select
        _dlt_parent_id,
        max(value) as lost_reason
    from landing_tracker.object_17__field_831
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o17.id,
    o17.created as src_created_at,
    o17.updated as src_updated_at,
    o17.field_1084 as link_to_server_for_required_document,
    o17.field_116 as opportunity_reference,
    o17.field_121_city as site_address_city,
    o17.field_121_country as site_address_country,
    o17.field_121_full as site_address_full,
    o17.field_121_latitude as site_address_latitude,
    o17.field_121_longitude as site_address_longitude,
    o17.field_121_state as site_address_state,
    o17.field_121_street as site_address_street,
    o17.field_121_street2 as site_address_street2,
    o17.field_121_zip as site_address_zip,
    o17.field_123 as full_opportunity_name,
    o17.field_126 as last_note,
    o17.field_128 as value_ex_gst,
    o17.field_1284 as reporting_financial_year_quoted_date,
    o17.field_1285 as reporting_financial_month_quoted_date,
    o17.field_1286 as reporting_fym_quoted_date,
    o17.field_1287 as reporting_this_fy_quoted_date,
    o17.field_1288 as reporting_last_fy_quote_date,
    o17.field_1289 as temp,
    o17.field_1290 as reporting_financial_month_month_name_quoted_date,
    o17.field_1291 as reporting_fy_quoted_date,
    o17.field_129_all_day as date_quoted_all_day,
    o17.field_129_date as date_quoted_date,
    o17.field_1310 as reporting_financial_quarter_quoted_date,
    o17.field_1311 as reporting_fyq_quoted_date,
    o17.field_132_all_day as date_closed_all_day,
    o17.field_132_date as date_closed_date,
    o17.field_1333 as business_and_contact_separator,
    o17.field_1334 as business_contact,
    o17.field_138 as opportunity_id,
    o17.field_139 as days_since_quoted,
    o17.field_140 as days_to_close,
    o17.field_1609_all_day as date_status_changed_all_day,
    o17.field_1609_date as date_status_changed_date,
    o17.field_1610_all_day as date_quote_status_changed_all_day,
    o17.field_1610_date as date_quote_status_changed_date,
    o17.field_1612 as days_in_status,
    o17.field_1613 as days_in_to_quote_status,
    o17.field_1614 as requote,
    o17.field_1665 as note_temp_field_copied_to_note,
    o17.field_1669 as cat_upload,
    o17.field_1835_all_day as submission_due_date_all_day,
    o17.field_1835_date as submission_due_date,
    o17.field_1836 as actual_hours_to_quote,
    o17.field_1837 as remaining_hour,
    o17.field_1838 as total_blinds_quoted,
    o17.field_1839 as total_curtains_quoted,
    o17.field_1841 as quote_due_week,
    o17.field_1842 as quote_number,
    o17.field_1843 as opportunity_name,
    o17.field_1846_all_day as expected_close_date_all_day,
    o17.field_1846_date as expected_close_date,
    o17.field_1847_all_day as forecast_completion_date_all_day,
    o17.field_1847_date as forecast_completion_date,
    o17.field_1849 as swp_is_swp,
    o17.field_1859 as status_display,
    o17.field_1860_all_day as date_forecast_updated_all_day,
    o17.field_1860_date as date_forecast_updated_date,
    o17.field_1871 as expected_close_month,
    o17.field_1872 as forecast_completion_month,
    o17.field_1878_all_day as swp_forecast_settlement_date_all_day,
    o17.field_1878_date as swp_forecast_settlement_date,
    o17.field_1882 as forecast_update_frequency,
    o17.field_1883 as update_required,
    o17.field_1884 as swp_conversion_rate_as_number,
    o17.field_1885 as expected_value,
    o17.field_1900 as swp_forecast_settlement_month,
    o17.field_1942 as volume_builder_po_number,
    o17.field_1945 as scheduled_activity,
    o17.field_1955 as synced_tool_folder,
    o17.field_1982 as custom_swp_quote,
    o17.field_1990 as development_name_as_text,
    o17.field_1991 as development_name_if_custom_swp,
    o17.field_1997 as awaiting_reply,
    o17.field_2066 as sales_to_review,
    o17.field_2067 as description_of_scope,
    o17.field_2068 as project_margin,
    o17.field_2069 as roller_blind_install_rate,
    o17.field_2070 as curtain_install_rate,
    o17.field_2071 as jason_factor,
    o17.field_2072 as additional_furnishings_rate,
    o17.field_2073 as kickback,
    o17.field_2074 as retention,
    o17.field_2164 as online_swp_sale,
    o17.field_2176_all_day as qualified_date_all_day,
    o17.field_2176_date as qualified_date,
    o17.field_2208 as rejected,
    o17.field_2209 as reject_note,
    o17.field_2210_all_day as rejected_date_all_day,
    o17.field_2210_date as rejected_date,
    o17.field_2217 as does_this_require_a_portal_upload,
    o17.field_2221_all_day as portal_upload_by_all_day,
    o17.field_2221_date as portal_upload_by_date,
    o17.field_2230_all_day as project_live_by_all_day,
    o17.field_2230_date as project_live_by_date,
    o17.field_2234_all_day as website_upload_by_all_day,
    o17.field_2234_date as website_upload_by_date,
    o17.field_2298 as requires_project_progression,
    o17.field_277 as tender,
    o17.field_286_all_day as date_last_contact_all_day,
    o17.field_286_date as date_last_contact_date,
    o17.field_287_all_day as date_next_contact_all_day,
    o17.field_287_date as date_next_contact_date,
    o17.field_2890 as accepted_quote,
    o17.field_2891 as proof_of_acceptance,
    o17.field_290 as days_since_last_contact,
    o17.field_291 as days_until_next_contact,
    o17.field_292 as contact_summary,
    o17.field_294 as has_job,
    o17.field_295 as jobs_count,
    o17.field_3133 as is_medium_density,
    o17.field_752_all_day as quote_due_date_all_day,
    o17.field_752_date as quote_due_date,
    o17.field_753 as estimated_hours_to_quote,
    o17.field_795_all_day as date_submitted_for_review_all_day,
    o17.field_795_date as date_submitted_for_review_date,
    o17.field_796_all_day as date_approved_all_day,
    o17.field_796_date as date_approved_date,
    o17.field_797 as days_since_submitted_for_review,
    o17.field_942_all_day as date_created_all_day,
    o17.field_942_date as date_created_date,
    o17f117.state_legacy as state_legacy,
    o17f118.business_unit as business_unit,
    o17f127.status_legacy as status_legacy,
    o17f1336.follow_up_status as follow_up_status,
    o17f1606.quote_status as quote_status,
    o17f1607.quote_date_type as quote_date_type,
    o17f1608.commission_rebate_payable as commission_rebate_payable,
    o17f1873.swp_forecast_swp_conversion_rate as swp_forecast_swp_conversion_rate,
    o17f2214.portal_upload as portal_upload,
    o17f2215.website_upload as website_upload,
    o17f2216.handover as handover,
    o17f2434.send_to_estimating as send_to_estimating,
    o17f2458.project_status_on_completion_of_quote as project_status_on_completion_of_quote,
    o17f2487.information as information,
    o17f2488.multibite_purchase_type as multibite_purchase_type,
    o17f2809.external_estimator_status as external_estimator_status,
    o17f2856.project_quote_type as project_quote_type,
    o17f831.lost_reason as lost_reason,
    o17._dlt_id as dlt_id,
    o17._dlt_load_id as dlt_load_id,
    o17.created_at as created_at,
    o17.updated_at as updated_at
from o17
left join o17f117 on o17._dlt_id = o17f117._dlt_parent_id
left join o17f118 on o17._dlt_id = o17f118._dlt_parent_id
left join o17f127 on o17._dlt_id = o17f127._dlt_parent_id
left join o17f1336 on o17._dlt_id = o17f1336._dlt_parent_id
left join o17f1606 on o17._dlt_id = o17f1606._dlt_parent_id
left join o17f1607 on o17._dlt_id = o17f1607._dlt_parent_id
left join o17f1608 on o17._dlt_id = o17f1608._dlt_parent_id
left join o17f1873 on o17._dlt_id = o17f1873._dlt_parent_id
left join o17f2214 on o17._dlt_id = o17f2214._dlt_parent_id
left join o17f2215 on o17._dlt_id = o17f2215._dlt_parent_id
left join o17f2216 on o17._dlt_id = o17f2216._dlt_parent_id
left join o17f2434 on o17._dlt_id = o17f2434._dlt_parent_id
left join o17f2458 on o17._dlt_id = o17f2458._dlt_parent_id
left join o17f2487 on o17._dlt_id = o17f2487._dlt_parent_id
left join o17f2488 on o17._dlt_id = o17f2488._dlt_parent_id
left join o17f2809 on o17._dlt_id = o17f2809._dlt_parent_id
left join o17f2856 on o17._dlt_id = o17f2856._dlt_parent_id
left join o17f831 on o17._dlt_id = o17f831._dlt_parent_id