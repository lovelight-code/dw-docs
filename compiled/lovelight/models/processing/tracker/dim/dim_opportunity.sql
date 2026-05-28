

-- ============================================================
-- Model: dim_opportunity
-- Description: Opportunity dimension containing slowly changing descriptive attributes.
-- Source: opportunity (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."opportunity"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as opportunity_sk,
    id as opportunity_id,
    opportunity_reference,
    opportunity_name,
    full_opportunity_name,
    quote_number,    
    initcap(btrim(regexp_replace(status_display, '[^A-Za-z0-9 /-]+', ''))) as status_display,
    has_job,
    quote_due_week,
    requote as is_requote,
    swp_is_swp as is_swp,
    custom_swp_quote as is_custom_swp_quote,
    online_swp_sale as is_online_swp_sale,
    update_required as is_update_req,
    retention as is_retention,
    rejected as is_rejected,
    development_name_as_text,
    development_name_if_custom_swp,
    accepted_quote,
    proof_of_acceptance,
    volume_builder_po_number as volume_builder_id_portal,
    business_unit,
    tender,
    quote_due_date,
    submission_due_date,
    lost_reason,
    quote_status,
    commission_rebate_payable,
    expected_close_date,
    forecast_completion_date,
    swp_forecast_settlement_date,
    swp_forecast_settlement_month,
    'KNACK' as src_sys_cd,
    opportunity_id as src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current