

-- ============================================================
-- Model: fct_invoice
-- Description: Fact table for invoice-level measures and event dates.
-- Source: ln_invoice (landing layer)
-- ============================================================

with base as (
    select *
    from "dw_dev"."landing_tracker"."ln_invoice"
),

final as (
    select
        d.invoice_sk,
        b.amount_due,
        b.date_created_date                as created_dt,
        b.issue_date                       as issue_dt,
        b.due_date                         as due_dt,
        b.date_paid_date                   as paid_dt,
        current_timestamp                  as proc_created_at,
        'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5'              as load_run_id,
        current_timestamp                  as load_run_at
    from base b
    left join "dw_dev"."processing_tracker"."dim_invoice" d
        on b.id = d.invoice_id
)

select
    invoice_sk,
    amount_due,
    created_dt,
    issue_dt,
    due_dt,
    paid_dt,
    proc_created_at,
    load_run_id,
    load_run_at
from (
    select
        *,
        row_number() over (partition by invoice_sk order by invoice_sk) as _rn
    from final
    where invoice_sk is not null
)
where _rn = 1