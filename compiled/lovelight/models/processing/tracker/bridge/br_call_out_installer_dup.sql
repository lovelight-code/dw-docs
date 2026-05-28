

select distinct
    call_out_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_call_out_installer_dup"
where call_out_id is not null
  and installer_id is not null