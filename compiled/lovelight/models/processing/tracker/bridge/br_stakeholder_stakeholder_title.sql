

select distinct
    stakeholder_id,
    stakeholder_title_id
from "dw_dev"."landing_tracker"."ln_br_stakeholder_stakeholder_title"
where stakeholder_id is not null
  and stakeholder_title_id is not null