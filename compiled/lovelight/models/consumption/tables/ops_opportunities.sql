

with opp_base as (

    select
        opportunity_sk,
        opportunity_id,
        src_sys_id,
        opportunity_name,
        business_unit,
        development_name_as_text,
        tender,
        quote_due_date,
        submission_due_date,
        lost_reason,
        quote_status,
        commission_rebate_payable,
        is_requote,
        is_swp,
        expected_close_date,
        forecast_completion_date,
        swp_forecast_settlement_date,
        swp_forecast_settlement_month,
        volume_builder_id_portal,
        quote_number
    from "dw_dev"."processing_tracker"."dim_opportunity"

),

opp_facts as (

    select
        fo.opportunity_sk,
        fo.value_ex_gst,
        fo.expected_value,
        fo.estimated_hours_to_quote,
        fo.actual_hours_to_quote,
        fo.remaining_hour,
        fo.total_blinds_quoted,
        fo.total_curtains_quoted,
        fo.swp_forecast_swp_conversion_rate,
        fo.created_dt,
        fo.quoted_dt,
        fo.closed_dt,
        fo.submitted_for_review_dt,
        fo.approved_dt,
        fo.forecast_updated_dt
    from "dw_dev"."processing_tracker"."fct_opportunity" fo

),

opp_status as (

    select
        bos.opportunity_id,
        os.status
    from "dw_dev"."processing_tracker"."br_opportunity_opportunity_status" bos
    left join "dw_dev"."processing_tracker"."dim_opportunity_status" os
        on bos.opportunity_status_id = os.opportunity_status_id

),

opp_state as (

    select
        bost.opportunity_id,
        st.state_code as state
    from "dw_dev"."processing_tracker"."br_opportunity_state" bost
    left join "dw_dev"."processing_tracker"."dim_state" st
        on bost.state_id = st.state_id

),

opp_account as (

    select
        boa.opportunity_id,
        a.account_name as account
    from "dw_dev"."processing_tracker"."br_opportunity_client_account" boa
    left join "dw_dev"."processing_tracker"."dim_account" a
        on boa.account_id = a.account_id

),

opp_contact as (

    select
        boc.opportunity_id,
        c.display_name as contact
    from "dw_dev"."processing_tracker"."br_opportunity_contact" boc
    left join "dw_dev"."processing_tracker"."dim_contact" c
        on boc.contact_id = c.contact_id

),

opp_sales as (

    select
        bosp.opportunity_id,
        s.salespeople_id  as sales_id,
        s.full_name       as sales_name,
        s.email           as sales_email,
        s.is_reported_sale
    from "dw_dev"."processing_tracker"."br_opportunity_salespeople" bosp
    left join "dw_dev"."processing_tracker"."dim_salespeople" s
        on bosp.salespeople_id = s.salespeople_id

),

opp_ops as (

    select
        boop.opportunity_id,
        o.operation_id as ops_id,
        o.full_name    as ops_name
    from "dw_dev"."processing_tracker"."br_opportunity_operation" boop
    left join "dw_dev"."processing_tracker"."dim_operation" o
        on boop.operation_id = o.operation_id

),

opp_lead as (

    select
        bol.opportunity_id,
        bol.lead_id
    from "dw_dev"."processing_tracker"."br_opportunity_lead" bol

),

opp_likelihood as (

    select
        boc.opportunity_id,
        cp.likelihood
    from "dw_dev"."processing_tracker"."br_opportunity_conversion_probability" boc
    left join "dw_dev"."processing_tracker"."dim_conversion_probability" cp
        on boc.conversion_probability_id = cp.conversion_probability_id

),

opp_invoicing_structure as (

    select
        boi.opportunity_id,
        inv.invoicing_structure_name as invoicing_structure
    from "dw_dev"."processing_tracker"."br_opportunity_invoicing_structure" boi
    left join "dw_dev"."processing_tracker"."dim_invoicing_structure" inv
        on boi.invoicing_structure_id = inv.invoicing_structure_id

),

opp_project_duration as (

    select
        bof.opportunity_id,
        fpl.project_duration
    from "dw_dev"."processing_tracker"."br_opportunity_forecast_project_length" bof
    left join "dw_dev"."processing_tracker"."dim_forecast_project_length" fpl
        on bof.forecast_project_length_id = fpl.forecast_project_length_id

)

select
    ob.opportunity_id                            as id,
    ob.src_sys_id                                as src_sys_id,
    ob.opportunity_name                          as name,
    ost.state                                    as state,
    ob.business_unit                             as business_unit,
    oa.account                                   as account,
    oc.contact                                   as contact,
    osp.sales_id                                 as sales_id,
    osp.sales_name                               as sales_name,
    osp.sales_email                              as sales_email,
    osp.is_reported_sale                         as is_reported_sale,
    ob.quote_number                              as quote_number,
    oop.ops_id                                   as ops_id,
    oop.ops_name                                 as ops_name,
    os.status                                    as status,
    of.created_dt                                as date_created,
    of.value_ex_gst                              as value_ex_gst,
    of.quoted_dt                                 as date_quoted,
    of.closed_dt                                 as date_closed,
    ob.development_name_as_text                  as development,
    ob.tender                                    as tender,
    ob.quote_due_date                            as quote_due_date,
    ob.submission_due_date                       as submission_due_date,
    of.estimated_hours_to_quote                  as estimated_hours_to_quote,
    of.submitted_for_review_dt                   as date_submitted_for_review,
    of.approved_dt                               as date_approved,
    ob.lost_reason                               as lost_reason,
    ol.lead_id                                   as lead_id,
    ob.quote_status                              as quote_status,
    ob.commission_rebate_payable                 as commission_rebate_payable,
    ob.is_requote                                as requote,
    of.actual_hours_to_quote                     as actual_hours_to_quote,
    of.remaining_hour                            as remaining_hours,
    of.total_blinds_quoted                       as total_blinds_quoted,
    of.total_curtains_quoted                     as total_curtains_quoted,
    oli.likelihood                               as likelihood,
    ob.expected_close_date                       as expected_close_date,
    ob.forecast_completion_date                  as forecast_completion_date,
    ois.invoicing_structure                      as invoicing_structure,
    opd.project_duration                         as project_duration,
    ob.is_swp                                    as is_swp,
    ob.swp_forecast_settlement_date              as forecast_settlement_date,
    ob.swp_forecast_settlement_month             as forecast_settlement_month,
    of.swp_forecast_swp_conversion_rate          as forecast_swp_conversion_rate,
    of.forecast_updated_dt                       as date_forecast_updated,
    of.expected_value                            as expected_value,
    ob.volume_builder_id_portal                  as volume_builder_po_number,
    ob.is_requote                                as is_requote
from opp_base ob
left join opp_facts of
    on ob.opportunity_sk = of.opportunity_sk
left join opp_status os
    on ob.opportunity_id = os.opportunity_id
left join opp_state ost
    on ob.opportunity_id = ost.opportunity_id
left join opp_account oa
    on ob.opportunity_id = oa.opportunity_id
left join opp_contact oc
    on ob.opportunity_id = oc.opportunity_id
left join opp_sales osp
    on ob.opportunity_id = osp.opportunity_id
left join opp_ops oop
    on ob.opportunity_id = oop.opportunity_id
left join opp_lead ol
    on ob.opportunity_id = ol.opportunity_id
left join opp_likelihood oli
    on ob.opportunity_id = oli.opportunity_id
left join opp_invoicing_structure ois
    on ob.opportunity_id = ois.opportunity_id
left join opp_project_duration opd
    on ob.opportunity_id = opd.opportunity_id