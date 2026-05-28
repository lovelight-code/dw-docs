
    
    

select
    likelihood as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_conversion_probability"
where likelihood is not null
group by likelihood
having count(*) > 1


