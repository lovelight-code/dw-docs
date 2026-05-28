

select distinct
    price_list_id,
    price_list_division_id
from "dw_dev"."landing_tracker"."ln_br_price_list_price_list_division"
where price_list_id is not null
  and price_list_division_id is not null