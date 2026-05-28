
    
    

select
    job_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_job"
where job_id is not null
group by job_id
having count(*) > 1


