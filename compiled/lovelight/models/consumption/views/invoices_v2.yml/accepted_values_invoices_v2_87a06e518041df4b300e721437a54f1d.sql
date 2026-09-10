
    
    

with all_values as (

    select
        type as value_field,
        count(*) as n_records

    from "dw_dev"."consumption"."invoices_v2"
    group by type

)

select *
from all_values
where value_field not in (
    'Invoice','Credit Memo','Debit Memo','Credit WO'
)


