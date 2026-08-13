

select
    bill_number,
    bill_type,
    bill_status,
    is_open,
    vendor_id,
    vendor_name,
    vendor_class,
    abn,
    bill_date,
    due_date,
    closed_date,
    pay_date,
    post_period,
    batch_nbr,
    project_id,
    project_name,
    project_status,
    project_branch,
    cost_code,
    line_nbr,
    amount,
    balance,
    estimated_allowance_value,
    last_modified_on
from "dw_dev"."consumption"."fin_bills"