

with invoices as (
    select * from "dw_dev"."landing_myob"."dw_invoices"
),

line_items as (
    select * from "dw_dev"."landing_myob"."dw_invoicelineitems"
),

audits as (
    select * from "dw_dev"."landing_myob"."dw_audits"
),

customers as (
    select * from "dw_dev"."landing_myob"."dw_customers"
),

-- State derived from line item branch codes (MYOB-native)
states as (
    select
        li.reference_nbr,
        regexp_replace(min(li.branch), '[0-9]', '') as state
    from line_items li
    where li.branch in ('03VIC', '04NSW', '05QLD', '06ACT', '07SA')
    group by li.reference_nbr
),

-- Division derived from line item subaccounts (MYOB-native)
divisions as (
    select
        li.reference_nbr,
        case
            when min(li.subaccount) = 'CUS' then 'Custom'
            when min(li.subaccount) = 'VOL' then 'Volume'
            when min(li.subaccount) = 'COM' then 'Commercial'
            when min(li.subaccount) = 'RET' then 'Retail'
            when min(li.subaccount) in ('IMP', 'EXP', 'CUR') then 'Online'
            else 'Other'
        end as division
    from line_items li
    where li.subaccount <> 'GEN'
    group by li.reference_nbr
),

-- Deleted invoices from audit log (MYOB-native)
deleted as (
    select distinct
        regexp_substr(a.audit_history_combined_key, '[0-9]+') as reference_nbr
    from audits a
    where a.table_name = 'ARInvoice'
      and a.operation  = 'Deleted'
)

select
    i.reference_nbr                                                                                                 as invoice_number,
    i."type"                                                                                                        as type,
    round(case when i."type" = 'Credit Memo' then i.amount::numeric / -1.1  else i.amount::numeric / 1.1  end, 2)::decimal(18,2)    as value_ex_gst,
    round(case when i."type" = 'Credit Memo' then i.amount::numeric * -1    else i.amount::numeric         end, 2)::decimal(18,2)    as inc_gst_amount,
    round(case when i."type" = 'Credit Memo' then i.amount::numeric * -0.1  else i.amount::numeric * 0.1   end, 2)::decimal(18,2)    as gst,
    case when i."type" = 'Credit Memo' then 0::numeric else i.ar_invoice_unpaid_balance::numeric end               as amount_due,
    i.status,
    i."date"::date                                                                                                  as invoice_date,
    convert_timezone('UTC', 'Australia/Melbourne', i.due_date::timestamp)                                          as due_date,
    convert_timezone('UTC', 'Australia/Melbourne', i.closed_date::timestamp)                                       as closed_date,
    convert_timezone('UTC', 'Australia/Melbourne', i.created_on::timestamp)                                        as created_date,
    i.customer,
    c.class_id                                                                                                      as customer_class,
    i.batch_nbr,
    i.branch,
    coalesce(s.state, '*missing*')                                                                                  as state,
    coalesce(d.division, '*missing*')                                                                               as division,
    i.customer_order_nbr,
    i.default_salesperson,
    i.description,
    i.ar_subaccount                                                                                                 as sub_account,
    i.cash_account,
    convert_timezone('UTC', 'Australia/Melbourne', i.last_modified_on::timestamp)                                  as last_modified_on,
    i.project                                                                                                       as myob_project

from invoices i
left join deleted   del on del.reference_nbr = i.reference_nbr
left join customers c   on c.primarykey      = i.customer
left join states    s   on s.reference_nbr   = i.reference_nbr
left join divisions d   on d.reference_nbr   = i.reference_nbr

where del.reference_nbr is null