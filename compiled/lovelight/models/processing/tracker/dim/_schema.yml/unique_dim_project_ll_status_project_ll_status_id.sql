
    
    

select
    project_ll_status_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_project_ll_status"
where project_ll_status_id is not null
group by project_ll_status_id
having count(*) > 1


