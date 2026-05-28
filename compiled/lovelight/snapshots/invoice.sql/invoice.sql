



select
    id,
    src_created_at::timestamp as src_created_at,
    src_updated_at::timestamp as src_updated_at,
    src_sys_id,
    status,
    state,
    business_unit,
    amount_due,
    date_created_date,
    issue_date,
    due_date,
    paid,
    date_paid_date,
    xero_invoice_number,
    myob_invoice_reference_number,
    xero_invoice_id,
    xero_invoice_link,
    myob_invoice_link,
    overdue_status,
    is_sent,
    invoice_type,
    service_option,
    deleted,
    dlt_load_id,
    dlt_id,
    created_at::timestamp as ln_created_at,
    updated_at::timestamp as ln_updated_at
from "dw_dev"."landing_tracker"."ln_invoice"
