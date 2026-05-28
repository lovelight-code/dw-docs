-- ============================================================
-- Model: ln_project
-- Description: Landing-layer view that flattens object_156
--              and its subtables into one record per project.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_156 table
-- ------------------------------------------------------------
o156 as (
    select *
    from landing_tracker.object_156
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_156__field_2707
-- ------------------------------------------------------------
o156f2707 as (
    select
        _dlt_parent_id,
        max(value) as project_type_category
    from landing_tracker.object_156__field_2707
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_2765
-- ------------------------------------------------------------
o156f2765 as (
    select
        _dlt_parent_id,
        max(value) as risk_score
    from landing_tracker.object_156__field_2765
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_2767
-- ------------------------------------------------------------
o156f2767 as (
    select
        _dlt_parent_id,
        max(value) as consequence_score
    from landing_tracker.object_156__field_2767
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_2768
-- ------------------------------------------------------------
o156f2768 as (
    select
        _dlt_parent_id,
        max(value) as tier
    from landing_tracker.object_156__field_2768
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_2770
-- ------------------------------------------------------------
o156f2770 as (
    select
        _dlt_parent_id,
        max(value) as pc_assessment
    from landing_tracker.object_156__field_2770
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_2797
-- ------------------------------------------------------------
o156f2797 as (
    select
        _dlt_parent_id,
        max(value) as project_status_category
    from landing_tracker.object_156__field_2797
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_2902
-- ------------------------------------------------------------
o156f2902 as (
    select
        _dlt_parent_id,
        max(value) as is_kick_off_required
    from landing_tracker.object_156__field_2902
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_2920
-- ------------------------------------------------------------
o156f2920 as (
    select
        _dlt_parent_id,
        max(value) as handover_status
    from landing_tracker.object_156__field_2920
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_2958
-- ------------------------------------------------------------
o156f2958 as (
    select
        _dlt_parent_id,
        max(value) as is_swms_complete
    from landing_tracker.object_156__field_2958
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_3015
-- ------------------------------------------------------------
o156f3015 as (
    select
        _dlt_parent_id,
        max(value) as add_linked_apt_job_automatically
    from landing_tracker.object_156__field_3015
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_156__field_3016
-- ------------------------------------------------------------
o156f3016 as (
    select
        _dlt_parent_id,
        max(value) as is_a_handover_required
    from landing_tracker.object_156__field_3016
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o156.id,
    o156.created as src_created_at,
    o156.updated as src_updated_at,
    o156.field_2249 as project_reference,
    o156.field_2260 as src_sys_id,
    o156.field_2261_all_day as created_date_all_day,
    o156.field_2261_date as created_date,
    o156.field_2608_url as project_folder_url,
    o156.field_2613 as project_value_ex_gst_staging_data_only,
    o156.field_2614 as project_name_with_id,
    o156.field_2620 as state_as_text,
    o156.field_2623_city as address_city,
    o156.field_2623_full as address_full,
    o156.field_2623_latitude as address_latitude,
    o156.field_2623_longitude as address_longitude,
    o156.field_2623_state as address_state,
    o156.field_2623_street as address_street,
    o156.field_2623_street2 as address_street2,
    o156.field_2623_zip as address_zip,
    o156.field_2625 as po_number,
    o156.field_2626 as invoiced_value,
    o156.field_2627 as scheduled_value,
    o156.field_2628 as missing_value,
    o156.field_2631 as sales_and_ops_team,
    o156.field_2708 as count_of_job,
    o156.field_2769 as risk_comment,
    o156.field_2774 as construction_status_sort_order,
    o156.field_2796 as project_status_sort_order,
    o156.field_2812 as count_of_complete_job,
    o156.field_2813 as progress,
    o156.field_2814 as pc_date,
    o156.field_2815_all_day as pc_date_last_updated_all_day,
    o156.field_2815_date as pc_date_last_updated_date,
    o156.field_2821 as prefixed_id,
    o156.field_2822 as project_name,
    o156.field_2823 as dev_temp,
    o156.field_2825 as project_id_for_child_job,
    o156.field_2826 as prefixed_id_with_dash,
    o156.field_2827 as myob_project_reference,
    o156.field_2853 as myob_project_task_reference,
    o156.field_2857 as project_value,
    o156.field_2858 as invoicing_instruction,
    o156.field_2861 as invoice_progress,
    o156.field_2882 as required_usd,
    o156.field_2883 as likely_cost_incurred_date,
    o156.field_2884 as is_handover_complete,
    o156.field_2885 as is_approved_to_invoice,
    o156.field_2886 as quoted_margin,
    o156.field_2887 as is_budget_complete,
    o156.field_2888 as is_scope_complete,
    o156.field_2889 as is_documentation_uploaded,
    o156.field_2903 as is_handover_just_complete,
    o156.field_2912 as project_cost,
    o156.field_2913 as calculated_margin,
    o156.field_2914 as is_union_site,
    o156.field_2916 as have_formal_contract,
    o156.field_2917 as payment_term,
    o156.field_2921_all_day as date_first_marked_compete_all_day,
    o156.field_2921_date as date_first_marked_compete_date,
    o156.field_2924_all_day as handover_date_all_day,
    o156.field_2924_date as handover_date,
    o156.field_2932 as is_in_wip,
    o156.field_2933 as latest_update,
    o156.field_2934 as previous_update,
    o156.field_2944 as related_job_business_unit,
    o156.field_2957 as swm,
    o156.field_2959 as is_public_liability_complete,
    o156.field_2960 as is_work_cover_complete,
    o156.field_2961 as ohs_note,
    o156.field_2962 as is_ohs_complete,
    o156.field_2970 as submission_deadline,
    o156.field_2976 as is_free_of_charge,
    o156.field_2983 as count_of_unmeasured_job,
    o156.field_3029 as open_task,
    o156.field_3035 as website_development_id,
    o156.field_3040 as swp_discount,
    o156.field_3041_all_day as discount_cut_off_date_all_day,
    o156.field_3041_date as discount_cut_off_date,
    o156.field_3042_url as website_link_url,
    o156.field_3077 as has_retention,
    o156.field_3078 as maximum_retention_amount_inc_gst,
    o156.field_3086_all_day as actual_pc_date_all_day,
    o156.field_3086_date as actual_pc_date,
    o156.field_3088 as retention_withheld,
    o156.field_3089 as retention_received,
    o156.field_3090 as retention_owed,
    o156.field_3091 as pc_12_month,
    o156.field_3092_all_day as retention_requested_date_all_day,
    o156.field_3092_date as retention_requested_date,
    o156.field_3093 as deed_of_release,
    o156.field_3094 as manual_project_value_for_retention,
    o156.field_3095 as project_value_for_retention,
    o156.field_3096 as retention_note,
    o156.field_3107 as due_first_release,
    o156.field_3108 as due_second_release,
    o156.field_3109 as no_yet_due,
    o156.field_3112 as is_pc_acheived,
    o156.field_3144 as invoicing_note,
    o156f2707.project_type_category as project_type_category,
    o156f2765.risk_score as risk_score,
    o156f2767.consequence_score as consequence_score,
    o156f2768.tier as tier,
    o156f2770.pc_assessment as pc_assessment,
    o156f2797.project_status_category as project_status_category,
    o156f2902.is_kick_off_required as is_kick_off_required,
    o156f2920.handover_status as handover_status,
    o156f2958.is_swms_complete as is_swms_complete,
    o156f3015.add_linked_apt_job_automatically as add_linked_apt_job_automatically,
    o156f3016.is_a_handover_required as is_a_handover_required,
    o156._dlt_id as dlt_id,
    o156._dlt_load_id as dlt_load_id,
    o156.created_at as created_at,
    o156.updated_at as updated_at
from o156
left join o156f2707 on o156._dlt_id = o156f2707._dlt_parent_id
left join o156f2765 on o156._dlt_id = o156f2765._dlt_parent_id
left join o156f2767 on o156._dlt_id = o156f2767._dlt_parent_id
left join o156f2768 on o156._dlt_id = o156f2768._dlt_parent_id
left join o156f2770 on o156._dlt_id = o156f2770._dlt_parent_id
left join o156f2797 on o156._dlt_id = o156f2797._dlt_parent_id
left join o156f2902 on o156._dlt_id = o156f2902._dlt_parent_id
left join o156f2920 on o156._dlt_id = o156f2920._dlt_parent_id
left join o156f2958 on o156._dlt_id = o156f2958._dlt_parent_id
left join o156f3015 on o156._dlt_id = o156f3015._dlt_parent_id
left join o156f3016 on o156._dlt_id = o156f3016._dlt_parent_id