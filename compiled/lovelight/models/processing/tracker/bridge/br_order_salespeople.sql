

select distinct
    order_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_order_salespeople"
where order_id is not null
  and salespeople_id is not null