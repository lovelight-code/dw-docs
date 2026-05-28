

select distinct
    stocktake_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_stocktake_installer"
where stocktake_id is not null
  and installer_id is not null