

select
    customer_id,
    customer_name,
    customer_status,
    customer_type,
    customer_class,
    terms,
    credit_limit,
    currency_id,
    city,
    "state",
    country,
    postal_code,
    last_modified_on,
    created_on,
    src_sys_cd,
    src_sys_id
from "dw_dev"."processing_myob"."dim_customer"