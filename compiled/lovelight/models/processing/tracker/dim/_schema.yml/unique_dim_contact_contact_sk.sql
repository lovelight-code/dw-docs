
    
    

select
    contact_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_contact"
where contact_sk is not null
group by contact_sk
having count(*) > 1


