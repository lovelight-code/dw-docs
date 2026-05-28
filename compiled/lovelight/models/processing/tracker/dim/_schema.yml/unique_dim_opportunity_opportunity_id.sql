
    
    

select
    opportunity_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_opportunity"
where opportunity_id is not null
group by opportunity_id
having count(*) > 1


