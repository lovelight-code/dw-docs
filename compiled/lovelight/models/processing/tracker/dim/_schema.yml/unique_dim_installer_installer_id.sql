
    
    

select
    installer_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_installer"
where installer_id is not null
group by installer_id
having count(*) > 1


