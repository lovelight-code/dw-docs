

select distinct
    opportunity_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_additional_quote_for_this_job"
where opportunity_id is not null
  and job_id is not null