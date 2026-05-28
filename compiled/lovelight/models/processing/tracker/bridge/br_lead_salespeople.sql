

select distinct
    lead_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_lead_salespeople"
where lead_id is not null
  and salespeople_id is not null