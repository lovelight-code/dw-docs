

select distinct
    price_list_id,
    price_list_item_id
from "dw_dev"."landing_tracker"."ln_br_price_list_price_list_item"
where price_list_id is not null
  and price_list_item_id is not null