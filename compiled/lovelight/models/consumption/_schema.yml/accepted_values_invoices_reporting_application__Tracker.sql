
    
    

with all_values as (

    select
        application as value_field,
        count(*) as n_records

    from "dw_dev"."consumption"."invoices_reporting"
    group by application

)

select *
from all_values
where value_field not in (
    'Tracker'
)


