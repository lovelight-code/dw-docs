

with project_divisions as (
    select
        myob_project                            as project_id,
        min(nullif(division, '*missing*'))      as business_unit
    from "dw_dev"."consumption"."fin_invoices"
    where myob_project is not null
      and myob_project != ''
    group by myob_project
),

project_states as (
    select
        t.project_id,
        regexp_replace(min(li.branch), '[0-9]', '') as state
    from "dw_dev"."consumption"."fin_project_transactions" t
    join "dw_dev"."landing_myob"."dw_invoicelineitems" li
        on li.reference_nbr = t.ref_nbr
    where li.branch in ('03VIC', '04NSW', '05QLD', '06ACT', '07SA')
    group by t.project_id
),

transactions as (
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
    coalesce(pd.business_unit, op.business_unit)                                        as business_unit,
    coalesce(ps.state, op.state)                                                        as state,
    p.expected_margin,
    coalesce(a.revenue, 0)                                                          as revenue,
    coalesce(a.total_costs, 0)                                                      as total_costs,
    coalesce(a.exadvert, 0)                                                         as exadvert,
    coalesce(a.gross_margin, 0)                                                     as gross_margin,
    case
        when coalesce(a.revenue, 0) = 0 then null
        else round(coalesce(a.gross_margin, 0) / a.revenue, 4)
    end                                                                             as gross_margin_pct,
    case
        when coalesce(a.revenue, 0) = 0                                             then null
        when round(coalesce(a.gross_margin, 0) / a.revenue, 4) < 0                 then 'Below 0%'
        when round(coalesce(a.gross_margin, 0) / a.revenue, 4) < 0.25              then '0% to 24.99%'
        when round(coalesce(a.gross_margin, 0) / a.revenue, 4) < 0.30              then '25% to 29.99%'
        when round(coalesce(a.gross_margin, 0) / a.revenue, 4) < 0.35              then '30% to 34.99%'
        when round(coalesce(a.gross_margin, 0) / a.revenue, 4) < 0.40              then '35% to 39.99%'
        when round(coalesce(a.gross_margin, 0) / a.revenue, 4) < 0.45              then '40% to 44.99%'
        else                                                                        'Above 45%'
    end                                                                             as margin_band,
    p.project_name,
    o.owner_name,
    o.ownership_source,
    coalesce(al.total_bill_allowance, 0)                                            as total_bill_allowance

from "dw_dev"."consumption"."fin_projects" p
left join "dw_dev"."consumption"."ops_project_owner" o  on o.myob_project_id = p.project_id
left join "dw_dev"."consumption"."ops_projects" op      on op.myob_project_reference = p.project_id
left join aggregated a                      on a.project_id = p.project_id
left join allowances al                     on al.project_id = p.project_id
left join project_states ps                 on ps.project_id = p.project_id
left join project_divisions pd              on pd.project_id = p.project_id