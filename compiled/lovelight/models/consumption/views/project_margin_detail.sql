

with bill_allowances as (
    select
        project_id,
        cost_code,
        sum(estimated_allowance_value)  as estimated_allowance_value
    from "dw_dev"."consumption"."fin_bills"
    where estimated_allowance_value is not null
      and estimated_allowance_value != 0
    group by project_id, cost_code
)

select
    p.bill_complete_date,
    p.project_status                                as status,
    o.job,
    p.project_id,
    o.owner_email                                   as owner,
    t.tran_id,
    t.ref_nbr,
    t.module,
    t.created_date,
    t.account_group,
    t.cost_code,
    coalesce(rc.customer_name, rs.vendor_name)      as account_name,
    ba.estimated_allowance_value,
    t.amount,
    nullif(trim(regexp_replace(t.description_3::varchar, '[\r\n]+', ' ')), '') as description

from "dw_dev"."consumption"."fin_projects" p
left join "dw_dev"."consumption"."fin_project_transactions" t   on t.project_id = p.project_id
left join "dw_dev"."consumption"."ops_project_owner" o  on o.myob_project_id = p.project_id
left join "dw_dev"."consumption"."ref_customers" rc     on rc.customer_id = t.customer_vendor
                                            and left(t.customer_vendor, 1) in ('C', '2')
left join "dw_dev"."consumption"."ref_suppliers" rs     on rs.vendor_id = t.customer_vendor
                                            and left(t.customer_vendor, 1) = 'S'
left join bill_allowances ba                on ba.project_id = t.project_id
                                            and ba.cost_code = t.cost_code
where t.account_group not in ('WIP', 'WIPINC')