

select distinct
    stakeholder_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_stakeholder_opportunity"
where stakeholder_id is not null
  and opportunity_id is not null