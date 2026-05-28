

select distinct
    reception_survey_id,
    division_id
from "dw_dev"."landing_tracker"."ln_br_reception_survey_division"
where reception_survey_id is not null
  and division_id is not null