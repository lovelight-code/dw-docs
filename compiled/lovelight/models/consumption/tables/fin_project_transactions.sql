

with transactions as (
    select * from "dw_dev"."processing_myob"."fct_project_transaction"
),

projects as (
    select
        project_id,
        project_name,
        project_status,
        "branch"
    from "dw_dev"."processing_myob"."dim_project"
)

select
    t.tran_id,
    trim(t.project_id)              as project_id,
    p.project_name,
    p.project_status,
    p."branch"                      as project_branch,
    t.project_task,
    t.ref_nbr,
    t.module,
    trim(t.account_group)           as account_group,
    trim(t.cost_code)               as cost_code,
    t.customer_vendor,
    t.transaction_date,
    t.created_date,
    t.fin_period,
    t.gl_batch_nbr,
    t.amount,
    t.quantity,
    t.uom,
    t.description,
    t.description_2,
    t.description_3,
    t.billable,
    t.billed,
    t.released,
    t.tran_amount,
    'MYOB'                          as src_sys_cd
from transactions t
left join projects p on p.project_id = t.project_id