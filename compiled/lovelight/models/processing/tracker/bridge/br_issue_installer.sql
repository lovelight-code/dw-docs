

select distinct
    issue_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_issue_installer"
where issue_id is not null
  and installer_id is not null