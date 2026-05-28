

select distinct
    order_id,
    storage_bay_id
from "dw_dev"."landing_tracker"."ln_br_order_storage_bay_dup"
where order_id is not null
  and storage_bay_id is not null