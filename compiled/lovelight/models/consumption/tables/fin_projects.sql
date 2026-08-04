

select
    trim(p.project_id)              as project_id,
    p.project_name,
    p.project_status,
    p.customer,
    p."branch",
    p.project_type,
    p.contract_type,
    p.expected_margin,
    p.start_date,
    p.end_date,
    p.last_modified_on,
    t.task_key,
    t.task_name,
    t.task_status,
    t.bill_complete_date,
    'MYOB'                          as src_sys_cd

from "dw_dev"."processing_myob"."dim_project" p
left join "dw_dev"."processing_myob"."dim_task" t on t.project_id = p.project_id