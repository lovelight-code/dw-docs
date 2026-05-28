

select distinct
    stakeholder_id,
    lead_id
from "dw_dev"."landing_tracker"."ln_br_stakeholder_lead"
where stakeholder_id is not null
  and lead_id is not null