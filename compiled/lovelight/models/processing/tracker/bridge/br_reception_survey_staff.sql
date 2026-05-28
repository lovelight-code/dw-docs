

select distinct
    reception_survey_id,
    staff_id
from "dw_dev"."landing_tracker"."ln_br_reception_survey_staff"
where reception_survey_id is not null
  and staff_id is not null