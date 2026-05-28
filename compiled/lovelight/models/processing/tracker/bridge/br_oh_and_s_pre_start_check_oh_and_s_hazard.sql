

select distinct
    oh_and_s_pre_start_check_id,
    oh_s_hazard_id
from "dw_dev"."landing_tracker"."ln_br_oh_and_s_pre_start_check_oh_and_s_hazard"
where oh_and_s_pre_start_check_id is not null
  and oh_s_hazard_id is not null