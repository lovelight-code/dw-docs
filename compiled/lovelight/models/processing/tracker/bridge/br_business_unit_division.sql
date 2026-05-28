

select distinct
    business_unit_id,
    division_id
from "dw_dev"."landing_tracker"."ln_br_business_unit_division"
where business_unit_id is not null
  and division_id is not null