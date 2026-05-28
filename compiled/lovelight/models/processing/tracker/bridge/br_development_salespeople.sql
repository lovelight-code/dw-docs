

select distinct
    development_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_development_salespeople"
where development_id is not null
  and salespeople_id is not null