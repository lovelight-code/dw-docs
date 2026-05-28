
    
    

select
    opportunity_status_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_opportunity_status"
where opportunity_status_id is not null
group by opportunity_status_id
having count(*) > 1


