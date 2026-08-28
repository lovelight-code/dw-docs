

select
    -- MYOB financial record (source of truth via fin_invoices)
    f.invoice_number,
    f.type,
    f.value_ex_gst,
    f.inc_gst_amount,
    f.gst,
    f.amount_due,
    f.status,
    f.invoice_date,
    coalesce(f.invoice_date, o.issue_date)::date                                       as report_date,
    f.due_date,
    f.closed_date,
    f.created_date,
    f.created_by,
    f.last_modified_on,
    f.last_modified_by,
    f.customer,
    f.customer_class,
    f.batch_nbr,
    f.branch,
    f.state,
    f.division,
    f.customer_order_nbr,
    f.default_salesperson,
    f.description,
    f.document_description,
    f.sub_account,
    f.cash_account,
    f.location,
    f.source,
    f.terms,
    f.myob_project,
    -- Tracker operational enrichment (null for MYOB-only invoices)
    o.tracker_invoice_id,
    o.job,
    o.business_unit,
    o.is_paid,
    o.issue_date,
    o.paid_date,
    o.sales_email,
    o.ops_email,
    o.division                                                                          as tracker_division,
    o.state                                                                             as tracker_state,
    -- Reconciliation flags
    o.issue_date                                                                        as system_report_date,
    date_trunc('month', coalesce(f.invoice_date, o.issue_date)) =
        date_trunc('month', o.issue_date)                                              as month_match,
    o.division = f.division                                                            as division_match,
    o.state = f.state                                                                  as state_match

from "dw_dev"."consumption"."fin_invoices" f
left join "dw_dev"."consumption"."ops_invoices" o
    on o.myob_invoice_reference_number = f.invoice_number