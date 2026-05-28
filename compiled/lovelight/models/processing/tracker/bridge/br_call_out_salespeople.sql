

select distinct
    call_out_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_call_out_salespeople"
where call_out_id is not null
  and salespeople_id is not null