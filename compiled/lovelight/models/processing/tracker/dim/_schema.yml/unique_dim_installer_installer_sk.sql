
    
    

select
    installer_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_installer"
where installer_sk is not null
group by installer_sk
having count(*) > 1


