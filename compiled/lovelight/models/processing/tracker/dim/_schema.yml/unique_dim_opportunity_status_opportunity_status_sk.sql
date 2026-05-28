
    
    

select
    opportunity_status_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_opportunity_status"
where opportunity_status_sk is not null
group by opportunity_status_sk
having count(*) > 1


