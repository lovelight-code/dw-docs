
    
    

select
    salespeople_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_salespeople"
where salespeople_sk is not null
group by salespeople_sk
having count(*) > 1


