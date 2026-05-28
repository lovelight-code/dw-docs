

select distinct
    opportunity_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_salespeople"
where opportunity_id is not null
  and salespeople_id is not null