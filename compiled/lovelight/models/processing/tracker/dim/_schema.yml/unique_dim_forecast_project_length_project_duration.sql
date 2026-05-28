
    
    

select
    project_duration as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_forecast_project_length"
where project_duration is not null
group by project_duration
having count(*) > 1


