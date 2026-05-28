
    
    

select
    project_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_project"
where project_sk is not null
group by project_sk
having count(*) > 1


