

select distinct
    oh_and_s_incident_report_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_oh_and_s_incident_report_user"
where oh_and_s_incident_report_id is not null
  and user_id is not null