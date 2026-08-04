
    
    

select
    id as unique_field,
    count(*) as n_records

from "dw_dev"."consumption"."callouts"
where id is not null
group by id
having count(*) > 1


