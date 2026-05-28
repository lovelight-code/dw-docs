

select distinct
    opportunity_id,
    forecast_project_length_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_forecast_project_length"
where opportunity_id is not null
  and forecast_project_length_id is not null