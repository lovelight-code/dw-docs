

-- ============================================================
-- Model: fct_opportunity
-- Description: Fact table for opportunity-level measures and metrics.
-- Source: ln_opportunity (landing layer)
-- ============================================================

with base as (
    select *
    from "dw_dev"."landing_tracker"."ln_opportunity"
),

final as (
    select
        o.opportunity_sk,
        a.account_sk,
        c.contact_sk,
        s.opportunity_status_sk,
        b.value_ex_gst,
        b.expected_value,
        b.estimated_hours_to_quote,
        b.actual_hours_to_quote,
        b.remaining_hour,
        b.total_blinds_quoted,
        b.total_curtains_quoted,
        b.swp_forecast_swp_conversion_rate,
        b.date_created_date                  as created_dt,
        b.date_quoted_date                   as quoted_dt,
        b.date_closed_date                   as closed_dt,
        b.date_submitted_for_review_date     as submitted_for_review_dt,
        b.date_approved_date                 as approved_dt,
        b.date_forecast_updated_date         as forecast_updated_dt,
        current_timestamp as proc_created_at,
        'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id,
        current_timestamp as load_run_at
    from base b
    left join "dw_dev"."processing_tracker"."dim_opportunity" o
        on b.id = o.opportunity_id
    left join "dw_dev"."processing_tracker"."br_opportunity_client_account" ba
        on b.id = ba.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_account" a
        on ba.account_id = a.account_id
    left join "dw_dev"."processing_tracker"."br_opportunity_contact" bc
        on b.id = bc.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_contact" c
        on bc.contact_id = c.contact_id
    left join "dw_dev"."processing_tracker"."br_opportunity_opportunity_status" bs
        on b.id = bs.opportunity_id
    left join "dw_dev"."processing_tracker"."dim_opportunity_status" s
        on bs.opportunity_status_id = s.opportunity_status_id
)

select *
from (
    select
        *,
        row_number() over (
            partition by opportunity_sk
            order by account_sk nulls last, contact_sk nulls last, opportunity_status_sk nulls last
        ) as _rn
    from final
    where opportunity_sk is not null
)
where _rn = 1