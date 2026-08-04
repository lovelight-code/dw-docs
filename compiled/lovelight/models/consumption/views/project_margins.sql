

with transactions as (
    select
        project_id,
        account_group,
        amount
    from "dw_dev"."consumption"."fin_project_transactions"
    where account_group not in ('WIP', 'WIPINC')
),

aggregated as (
    select
        project_id,
        abs(sum(case when account_group in ('SALES', 'COGS4') then amount else 0 end))  as revenue,
        sum(case when account_group in (
                'COGS', 'EXP1',
                'EXADVERT', 'EXFRE', 'EXGEN', 'EXOFFICE', 'EXTRAVEL', 'EXPOTH1'
            ) then amount else 0 end)                                                   as total_costs,
        sum(case when account_group = 'EXADVERT' then amount else 0 end)                as exadvert,
        abs(sum(case when account_group in ('SALES', 'COGS4') then amount else 0 end))
        - sum(case when account_group in (
                'COGS', 'EXP1',
                'EXADVERT', 'EXFRE', 'EXGEN', 'EXOFFICE', 'EXTRAVEL', 'EXPOTH1'
            ) then amount else 0 end)                                                   as gross_margin
    from transactions
    group by project_id
),

allowances as (
    select
        project_id,
        sum(estimated_allowance_value) as total_bill_allowance
    from "dw_dev"."consumption"."fin_bills"
    where estimated_allowance_value is not null
      and estimated_allowance_value != 0
    group by project_id
)

select
    p.bill_complete_date,
    p.project_status                                                                as status,
    o.job,
    p.project_id,
    o.owner_email,
    p.expected_margin,
    coalesce(a.revenue, 0)                                                          as revenue,
    coalesce(a.total_costs, 0)                                                      as total_costs,
    coalesce(a.exadvert, 0)                                                         as exadvert,
    coalesce(a.gross_margin, 0)                                                     as gross_margin,
    case
        when coalesce(a.revenue, 0) = 0 then null
        else round(coalesce(a.gross_margin, 0) / a.revenue, 4)
    end                                                                             as gross_margin_pct,
    p.project_name,
    o.owner_name,
    o.ownership_source,
    coalesce(al.total_bill_allowance, 0)                                            as total_bill_allowance

from "dw_dev"."consumption"."fin_projects" p
left join "dw_dev"."consumption"."ops_project_owner" o  on o.myob_project_id = p.project_id
left join aggregated a                      on a.project_id = p.project_id
left join allowances al                     on al.project_id = p.project_id