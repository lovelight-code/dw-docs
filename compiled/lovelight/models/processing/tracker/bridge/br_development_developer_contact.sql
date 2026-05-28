

select distinct
    development_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_development_developer_contact"
where development_id is not null
  and contact_id is not null