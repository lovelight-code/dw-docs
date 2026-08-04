

with bills as (
    select * from "dw_dev"."processing_myob"."fct_bill"
    where is_current
),

suppliers as (
    select
        supplier_sk,
        vendor_id,
        vendor_name,
        vendor_class,
        abn
    from "dw_dev"."processing_myob"."dim_supplier"
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
    b.reference_nbr                 as bill_number,
    b.bill_type,
    b.bill_status,
    b.is_open,
    b.vendor_id,
    s.vendor_name,
    s.vendor_class,
    s.abn,
    b.bill_date,
    b.due_date,
    b.closed_date,
    b.pay_date,
    b.post_period,
    b.batch_nbr,
    trim(b.project_id)              as project_id,
    p.project_name,
    p.project_status,
    p."branch"                      as project_branch,
    trim(b.cost_code)               as cost_code,
    b.line_nbr,
    b.amount,
    b.balance,
    b.estimated_allowance_value,
    b.last_modified_on,
    'MYOB'                          as src_sys_cd
from bills b
left join suppliers s on s.supplier_sk = b.supplier_sk
left join projects p  on p.project_id  = b.project_id