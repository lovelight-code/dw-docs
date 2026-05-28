

select distinct
    price_list_item_id,
    price_list_price_method_id
from "dw_dev"."landing_tracker"."ln_br_price_list_item_price_list_price_method"
where price_list_item_id is not null
  and price_list_price_method_id is not null