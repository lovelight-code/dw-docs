

select distinct
    lead_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_lead_contact"
where lead_id is not null
  and contact_id is not null