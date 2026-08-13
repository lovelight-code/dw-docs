

select
    -- MYOB financial record (source of truth)
    f.invoice_number,
    f.type,
    f.value_ex_gst,
    f.inc_gst_amount,
    f.gst,
    f.amount_due,
    f.status,
    f.invoice_date,
    f.due_date,
    f.closed_date,
    f.created_date,
    f.customer,
    f.customer_class,
    f.batch_nbr,
    f.branch,
    f.state,
    f.division,
    f.customer_order_nbr,
    f.default_salesperson,
    f.description,
    f.sub_account,
    f.cash_account,
    f.last_modified_on,
    f.myob_project,
    -- Tracker operational context (null for MYOB-only invoices)
    o.tracker_invoice_id,
    o.job,
    o.business_unit,
    o.is_paid,
    o.issue_date,
    o.paid_date,
    o.sales_email,
    o.ops_email

from "dw_dev"."consumption"."fin_invoices" f
left join "dw_dev"."consumption"."ops_invoices" o
    on o.myob_invoice_reference_number = f.invoice_number