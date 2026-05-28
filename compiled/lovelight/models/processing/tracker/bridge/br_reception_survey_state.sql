

select distinct
    reception_survey_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_reception_survey_state"
where reception_survey_id is not null
  and state_id is not null