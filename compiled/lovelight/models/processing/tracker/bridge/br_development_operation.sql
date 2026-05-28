

select distinct
    development_id,
    operation_id
from "dw_dev"."landing_tracker"."ln_br_development_operation"
where development_id is not null
  and operation_id is not null