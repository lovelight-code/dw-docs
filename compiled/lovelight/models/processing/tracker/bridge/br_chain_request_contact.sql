

select distinct
    chain_request_id,
    contact_id
from "dw_dev"."landing_tracker"."ln_br_chain_request_contact"
where chain_request_id is not null
  and contact_id is not null