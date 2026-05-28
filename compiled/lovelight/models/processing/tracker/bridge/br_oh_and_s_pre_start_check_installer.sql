

select distinct
    oh_and_s_pre_start_check_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_oh_and_s_pre_start_check_installer"
where oh_and_s_pre_start_check_id is not null
  and installer_id is not null