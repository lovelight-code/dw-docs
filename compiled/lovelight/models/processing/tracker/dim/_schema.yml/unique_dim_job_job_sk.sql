
    
    

select
    job_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_job"
where job_sk is not null
group by job_sk
having count(*) > 1


