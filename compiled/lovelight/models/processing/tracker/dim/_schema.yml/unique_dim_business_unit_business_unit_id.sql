
    
    

select
    business_unit_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_business_unit"
where business_unit_id is not null
group by business_unit_id
having count(*) > 1


