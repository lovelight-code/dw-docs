

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
    state,
    country,
    postal_code,
    last_modified_on,
    created_on
from "dw_dev"."consumption"."ref_customers"