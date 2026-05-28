

select distinct
    oh_and_s_incident_report_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_oh_and_s_incident_report_job"
where oh_and_s_incident_report_id is not null
  and job_id is not null