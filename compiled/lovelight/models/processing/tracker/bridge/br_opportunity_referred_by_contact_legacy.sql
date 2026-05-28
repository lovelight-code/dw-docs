

select distinct
    opportunity_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_referred_by_contact_legacy"
where opportunity_id is not null
  and contact_id is not null