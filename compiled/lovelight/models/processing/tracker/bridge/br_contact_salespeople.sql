

select distinct
    contact_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_contact_salespeople"
where contact_id is not null
  and salespeople_id is not null