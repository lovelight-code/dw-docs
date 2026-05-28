
    
    

with all_values as (

    select
        src_sys_cd as value_field,
        count(*) as n_records

    from "dw_dev"."processing_tracker"."dim_salespeople"
    group by src_sys_cd

)

select *
from all_values
where value_field not in (
    'KNACK'
)


