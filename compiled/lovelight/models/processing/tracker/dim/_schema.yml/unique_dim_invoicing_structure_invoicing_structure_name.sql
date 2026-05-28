
    
    

select
    invoicing_structure_name as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_invoicing_structure"
where invoicing_structure_name is not null
group by invoicing_structure_name
having count(*) > 1


