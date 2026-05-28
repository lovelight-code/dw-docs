
    
    

select
    email as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_operation"
where email is not null
group by email
having count(*) > 1


