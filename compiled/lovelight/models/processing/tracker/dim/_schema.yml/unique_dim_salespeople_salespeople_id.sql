
    
    

select
    salespeople_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_salespeople"
where salespeople_id is not null
group by salespeople_id
having count(*) > 1


