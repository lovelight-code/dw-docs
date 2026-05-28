

select distinct
    service_call_ops_allocation_id,
    operation_id
from "dw_dev"."landing_tracker"."ln_br_service_call_ops_allocation_operation"
where service_call_ops_allocation_id is not null
  and operation_id is not null