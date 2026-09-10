
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from "dw_dev"."consumption"."invoices_v2"
    group by status

)

select *
from all_values
where value_field not in (
    'Closed','Open','Balanced','Credit Hold','Scheduled'
)


