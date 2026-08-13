

select
    tran_id,
    project_id,
    project_name,
    project_status,
    project_branch,
    project_task,
    ref_nbr,
    module,
    account_group,
    cost_code,
    customer_vendor,
    transaction_date,
    created_date,
    fin_period,
    gl_batch_nbr,
    amount,
    quantity,
    uom,
    description,
    description_2,
    description_3,
    billable,
    billed,
    released,
    tran_amount
from "dw_dev"."consumption"."fin_project_transactions"