

select distinct
    installer_id,
    division_id
from "dw_dev"."landing_tracker"."ln_br_installer_division"
where installer_id is not null
  and division_id is not null