

select distinct
    call_out_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_call_out_contact"
where call_out_id is not null
  and contact_id is not null