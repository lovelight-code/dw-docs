

select distinct
    opportunity_id,
    operation_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_operation"
where opportunity_id is not null
  and operation_id is not null