
    
    

select
    job_status_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_job_status"
where job_status_sk is not null
group by job_status_sk
having count(*) > 1


