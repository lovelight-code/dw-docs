
    
    

select
    operation_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_operation"
where operation_id is not null
group by operation_id
having count(*) > 1


