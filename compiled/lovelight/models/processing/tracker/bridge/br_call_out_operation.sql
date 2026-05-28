

select distinct
    call_out_id,
    operation_id
from "dw_dev"."landing_tracker"."ln_br_call_out_operation"
where call_out_id is not null
  and operation_id is not null