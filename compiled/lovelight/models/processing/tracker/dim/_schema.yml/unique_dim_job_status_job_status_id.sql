
    
    

select
    job_status_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_job_status"
where job_status_id is not null
group by job_status_id
having count(*) > 1


