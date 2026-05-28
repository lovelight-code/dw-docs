
    
    

select
    status as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_opportunity_status"
where status is not null
group by status
having count(*) > 1


