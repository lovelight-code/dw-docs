
    
    

select
    opportunity_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_opportunity"
where opportunity_sk is not null
group by opportunity_sk
having count(*) > 1


