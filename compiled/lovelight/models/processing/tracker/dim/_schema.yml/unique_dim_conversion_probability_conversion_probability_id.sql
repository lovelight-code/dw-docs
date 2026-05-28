
    
    

select
    conversion_probability_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_conversion_probability"
where conversion_probability_id is not null
group by conversion_probability_id
having count(*) > 1


