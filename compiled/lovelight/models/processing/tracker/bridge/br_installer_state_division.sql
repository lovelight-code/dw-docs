

select distinct
    installer_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_installer_state_division"
where installer_id is not null
  and state_division_id is not null