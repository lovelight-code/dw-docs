
    
    

select
    invoice_sk as unique_field,
    count(*) as n_records

from "dw_dev"."processing_tracker"."dim_invoice"
where invoice_sk is not null
group by invoice_sk
having count(*) > 1


