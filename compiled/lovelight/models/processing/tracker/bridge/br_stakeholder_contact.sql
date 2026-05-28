

select distinct
    stakeholder_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_stakeholder_contact"
where stakeholder_id is not null
  and contact_id is not null