
    
    

select
    status_display as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_project_ll_status"
where status_display is not null
group by status_display
having count(*) > 1


