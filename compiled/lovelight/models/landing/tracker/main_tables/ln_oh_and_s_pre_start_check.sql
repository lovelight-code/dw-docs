-- ============================================================
-- Model: ln_oh_and_s_pre_start_check
-- Description: Landing-layer view that flattens object_162
--              and its subtables into one record per oh_and_s_pre_start_check.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_162 table
-- ------------------------------------------------------------
o162 as (
    select *
    from landing_tracker.object_162
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_162__field_2312
-- ------------------------------------------------------------
o162f2312 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_162__field_2312
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2313
-- ------------------------------------------------------------
o162f2313 as (
    select
        _dlt_parent_id,
        max(value) as is_a_construction_safety_plan_on_site
    from landing_tracker.object_162__field_2313
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2314
-- ------------------------------------------------------------
o162f2314 as (
    select
        _dlt_parent_id,
        max(value) as is_there_a_site_induction_for_this_job_project
    from landing_tracker.object_162__field_2314
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2315
-- ------------------------------------------------------------
o162f2315 as (
    select
        _dlt_parent_id,
        max(value) as have_you_completed_the_site_induction
    from landing_tracker.object_162__field_2315
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2316
-- ------------------------------------------------------------
o162f2316 as (
    select
        _dlt_parent_id,
        max(value) as construction_induction_red_white_card
    from landing_tracker.object_162__field_2316
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2317
-- ------------------------------------------------------------
o162f2317 as (
    select
        _dlt_parent_id,
        max(value) as site_specific_hazard
    from landing_tracker.object_162__field_2317
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2318
-- ------------------------------------------------------------
o162f2318 as (
    select
        _dlt_parent_id,
        max(value) as are_swms_available_on_site
    from landing_tracker.object_162__field_2318
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2319
-- ------------------------------------------------------------
o162f2319 as (
    select
        _dlt_parent_id,
        max(value) as safe_to_start
    from landing_tracker.object_162__field_2319
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2361
-- ------------------------------------------------------------
o162f2361 as (
    select
        _dlt_parent_id,
        max(value) as is_there_fire_safety_management_on_site
    from landing_tracker.object_162__field_2361
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2397
-- ------------------------------------------------------------
o162f2397 as (
    select
        _dlt_parent_id,
        max(value) as all_lovelight_installers_employees_have_completed_the_site_safety_induction
    from landing_tracker.object_162__field_2397
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2398
-- ------------------------------------------------------------
o162f2398 as (
    select
        _dlt_parent_id,
        max(value) as all_electrical_leads_tested_tagged_and_safe_to_use
    from landing_tracker.object_162__field_2398
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2399
-- ------------------------------------------------------------
o162f2399 as (
    select
        _dlt_parent_id,
        max(value) as plant_equipment_safe_to_use
    from landing_tracker.object_162__field_2399
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2400
-- ------------------------------------------------------------
o162f2400 as (
    select
        _dlt_parent_id,
        max(value) as all_personal_protective_equipment_and_clothing_available_and_in_good_condition
    from landing_tracker.object_162__field_2400
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2401
-- ------------------------------------------------------------
o162f2401 as (
    select
        _dlt_parent_id,
        max(value) as high_risk_tasks_only_all_workers_read_signed_safe_work_method_statement_within_la_faab8e58
    from landing_tracker.object_162__field_2401
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2402
-- ------------------------------------------------------------
o162f2402 as (
    select
        _dlt_parent_id,
        max(value) as safety_signs_been_erected
    from landing_tracker.object_162__field_2402
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2403
-- ------------------------------------------------------------
o162f2403 as (
    select
        _dlt_parent_id,
        max(value) as adequate_public_protection_been_provided_site_security
    from landing_tracker.object_162__field_2403
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2404
-- ------------------------------------------------------------
o162f2404 as (
    select
        _dlt_parent_id,
        max(value) as housekeeping_area_is_tidy_no_trip_hazard
    from landing_tracker.object_162__field_2404
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2405
-- ------------------------------------------------------------
o162f2405 as (
    select
        _dlt_parent_id,
        max(value) as first_aid_kit_on_site_and_current
    from landing_tracker.object_162__field_2405
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2415
-- ------------------------------------------------------------
o162f2415 as (
    select
        _dlt_parent_id,
        max(value) as is_there_an_assembly_area_on_site
    from landing_tracker.object_162__field_2415
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2416
-- ------------------------------------------------------------
o162f2416 as (
    select
        _dlt_parent_id,
        max(value) as which_ppe_do_you_intend_to_use_on_site
    from landing_tracker.object_162__field_2416
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2417
-- ------------------------------------------------------------
o162f2417 as (
    select
        _dlt_parent_id,
        max(value) as all_tools_are_in_good_condition
    from landing_tracker.object_162__field_2417
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2418
-- ------------------------------------------------------------
o162f2418 as (
    select
        _dlt_parent_id,
        max(value) as are_ladders_safe_to_use
    from landing_tracker.object_162__field_2418
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2420
-- ------------------------------------------------------------
o162f2420 as (
    select
        _dlt_parent_id,
        max(value) as do_you_have_required_certification_to_operate_plant_equipment
    from landing_tracker.object_162__field_2420
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2428
-- ------------------------------------------------------------
o162f2428 as (
    select
        _dlt_parent_id,
        max(value) as will_you_be_working_with_electrical_cables_that_required_the_power_to_be_shut_off
    from landing_tracker.object_162__field_2428
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_162__field_2429
-- ------------------------------------------------------------
o162f2429 as (
    select
        _dlt_parent_id,
        max(value) as have_you_arranged_and_notified_the_site_supervisor
    from landing_tracker.object_162__field_2429
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o162.id,
    o162.created as src_created_at,
    o162.updated as src_updated_at,
    o162.field_2303 as pre_start_checks_name,
    o162.field_2304 as src_sys_id,
    o162.field_2309_all_day as created_date_all_day,
    o162.field_2309_date as created_date,
    o162.field_2310_all_day as requested_date_all_day,
    o162.field_2310_date as requested_date,
    o162.field_2327_all_day as completed_date_all_day,
    o162.field_2327_date as completed_date,
    o162.field_2357 as description_of_hazard_s,
    o162.field_2359 as site_supervisor,
    o162.field_2360 as additional_note,
    o162.field_2381_base30 as signature_base30,
    o162.field_2381_svg as signature_svg,
    o162.field_2494 as match_to_portal,
    o162f2312.status as status,
    o162f2313.is_a_construction_safety_plan_on_site as is_a_construction_safety_plan_on_site,
    o162f2314.is_there_a_site_induction_for_this_job_project as is_there_a_site_induction_for_this_job_project,
    o162f2315.have_you_completed_the_site_induction as have_you_completed_the_site_induction,
    o162f2316.construction_induction_red_white_card as construction_induction_red_white_card,
    o162f2317.site_specific_hazard as site_specific_hazard,
    o162f2318.are_swms_available_on_site as are_swms_available_on_site,
    o162f2319.safe_to_start as safe_to_start,
    o162f2361.is_there_fire_safety_management_on_site as is_there_fire_safety_management_on_site,
    o162f2397.all_lovelight_installers_employees_have_completed_the_site_safety_induction as all_lovelight_installers_employees_have_completed_the_site_safety_induction,
    o162f2398.all_electrical_leads_tested_tagged_and_safe_to_use as all_electrical_leads_tested_tagged_and_safe_to_use,
    o162f2399.plant_equipment_safe_to_use as plant_equipment_safe_to_use,
    o162f2400.all_personal_protective_equipment_and_clothing_available_and_in_good_condition as all_personal_protective_equipment_and_clothing_available_and_in_good_condition,
    o162f2401.high_risk_tasks_only_all_workers_read_signed_safe_work_method_statement_within_la_faab8e58 as high_risk_tasks_only_all_workers_read_signed_safe_work_method_statement_within_la_faab8e58,
    o162f2402.safety_signs_been_erected as safety_signs_been_erected,
    o162f2403.adequate_public_protection_been_provided_site_security as adequate_public_protection_been_provided_site_security,
    o162f2404.housekeeping_area_is_tidy_no_trip_hazard as housekeeping_area_is_tidy_no_trip_hazard,
    o162f2405.first_aid_kit_on_site_and_current as first_aid_kit_on_site_and_current,
    o162f2415.is_there_an_assembly_area_on_site as is_there_an_assembly_area_on_site,
    o162f2416.which_ppe_do_you_intend_to_use_on_site as which_ppe_do_you_intend_to_use_on_site,
    o162f2417.all_tools_are_in_good_condition as all_tools_are_in_good_condition,
    o162f2418.are_ladders_safe_to_use as are_ladders_safe_to_use,
    o162f2420.do_you_have_required_certification_to_operate_plant_equipment as do_you_have_required_certification_to_operate_plant_equipment,
    o162f2428.will_you_be_working_with_electrical_cables_that_required_the_power_to_be_shut_off as will_you_be_working_with_electrical_cables_that_required_the_power_to_be_shut_off,
    o162f2429.have_you_arranged_and_notified_the_site_supervisor as have_you_arranged_and_notified_the_site_supervisor,
    o162._dlt_id as dlt_id,
    o162._dlt_load_id as dlt_load_id,
    o162.created_at as created_at,
    o162.updated_at as updated_at
from o162
left join o162f2312 on o162._dlt_id = o162f2312._dlt_parent_id
left join o162f2313 on o162._dlt_id = o162f2313._dlt_parent_id
left join o162f2314 on o162._dlt_id = o162f2314._dlt_parent_id
left join o162f2315 on o162._dlt_id = o162f2315._dlt_parent_id
left join o162f2316 on o162._dlt_id = o162f2316._dlt_parent_id
left join o162f2317 on o162._dlt_id = o162f2317._dlt_parent_id
left join o162f2318 on o162._dlt_id = o162f2318._dlt_parent_id
left join o162f2319 on o162._dlt_id = o162f2319._dlt_parent_id
left join o162f2361 on o162._dlt_id = o162f2361._dlt_parent_id
left join o162f2397 on o162._dlt_id = o162f2397._dlt_parent_id
left join o162f2398 on o162._dlt_id = o162f2398._dlt_parent_id
left join o162f2399 on o162._dlt_id = o162f2399._dlt_parent_id
left join o162f2400 on o162._dlt_id = o162f2400._dlt_parent_id
left join o162f2401 on o162._dlt_id = o162f2401._dlt_parent_id
left join o162f2402 on o162._dlt_id = o162f2402._dlt_parent_id
left join o162f2403 on o162._dlt_id = o162f2403._dlt_parent_id
left join o162f2404 on o162._dlt_id = o162f2404._dlt_parent_id
left join o162f2405 on o162._dlt_id = o162f2405._dlt_parent_id
left join o162f2415 on o162._dlt_id = o162f2415._dlt_parent_id
left join o162f2416 on o162._dlt_id = o162f2416._dlt_parent_id
left join o162f2417 on o162._dlt_id = o162f2417._dlt_parent_id
left join o162f2418 on o162._dlt_id = o162f2418._dlt_parent_id
left join o162f2420 on o162._dlt_id = o162f2420._dlt_parent_id
left join o162f2428 on o162._dlt_id = o162f2428._dlt_parent_id
left join o162f2429 on o162._dlt_id = o162f2429._dlt_parent_id