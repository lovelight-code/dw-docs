
    
    

select
    invoicing_structure_id as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_invoicing_structure"
where invoicing_structure_id is not null
group by invoicing_structure_id
having count(*) > 1


