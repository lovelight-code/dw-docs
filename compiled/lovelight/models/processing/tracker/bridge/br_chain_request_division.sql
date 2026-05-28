

select distinct
    chain_request_id,
    division_id
from "dw_dev"."landing_tracker"."ln_br_chain_request_division"
where chain_request_id is not null
  and division_id is not null