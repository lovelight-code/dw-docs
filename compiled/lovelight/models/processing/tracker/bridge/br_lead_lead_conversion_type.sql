

select distinct
    lead_id,
    lead_conversion_type_id
from "dw_dev"."landing_tracker"."ln_br_lead_lead_conversion_type"
where lead_id is not null
  and lead_conversion_type_id is not null