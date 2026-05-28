

select distinct
    install_status_update_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_install_status_update_installer"
where install_status_update_id is not null
  and installer_id is not null