

select distinct
    order_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_order_development"
where order_id is not null
  and development_id is not null