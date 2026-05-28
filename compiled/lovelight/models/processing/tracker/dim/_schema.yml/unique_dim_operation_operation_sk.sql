
    
    

select
    operation_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_operation"
where operation_sk is not null
group by operation_sk
having count(*) > 1


