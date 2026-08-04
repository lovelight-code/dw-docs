

with xero_inv as (

    -- Xero invoices pre-April 2023 (direct reference — Xero not yet on dw-pipelines)
    select *
    from lovelight_xero.invoices
    where date < '2023-04-01'

)

select
    o.tracker_invoice_id                                                                        as id,
    'Tracker'                                                                                   as application,
    o.src_sys_id,
    coalesce(f.invoice_date, xi.date::date, o.issue_date)::date                                as report_date,
    o.issue_date                                                                                as system_report_date,
    date_trunc('month', coalesce(f.invoice_date, xi.date::date, o.issue_date)) =
        date_trunc('month', o.issue_date)                                                      as month_match,
    o.created_date,
    coalesce(f.value_ex_gst, xi.subtotal, o.amount_due)                                       as value_ex_gst,
    o.status,
    coalesce(f.invoice_number, xi.invoicenumber)                                               as invoice_number,
    coalesce(o.myob_invoice_reference_number, o.xero_invoice_id)                              as system_invoice_number,
    o.job                                                                                       as reference,
    o.business_unit,
    o.division,
    f.division                                                                                  as myob_division,
    o.division = f.division                                                                     as division_match,
    o.state,
    f.state                                                                                     as myob_state,
    o.state = f.state                                                                           as state_match,
    o.sales_email,
    o.ops_email

from "dw_dev"."consumption"."ops_invoices" o
left join "dw_dev"."consumption"."fin_invoices" f
    on f.invoice_number = o.myob_invoice_reference_number
left join xero_inv xi
    on xi.invoicenumber = o.xero_invoice_id