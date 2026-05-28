

select distinct
    project_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_project_installer"
where project_id is not null
  and installer_id is not null