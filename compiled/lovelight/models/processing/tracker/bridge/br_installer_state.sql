

select distinct
    installer_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_installer_state"
where installer_id is not null
  and state_id is not null