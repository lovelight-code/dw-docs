
    
    

select
    project_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_project"
where project_id is not null
group by project_id
having count(*) > 1


