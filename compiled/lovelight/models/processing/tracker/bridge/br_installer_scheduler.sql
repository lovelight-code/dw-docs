

select distinct
    installer_id,
    scheduler_id
from "dw_dev"."landing_tracker"."ln_br_installer_scheduler"
where installer_id is not null
  and scheduler_id is not null