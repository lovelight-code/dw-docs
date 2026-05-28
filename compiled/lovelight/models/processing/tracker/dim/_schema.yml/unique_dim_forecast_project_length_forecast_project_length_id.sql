
    
    

select
    forecast_project_length_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_forecast_project_length"
where forecast_project_length_id is not null
group by forecast_project_length_id
having count(*) > 1


