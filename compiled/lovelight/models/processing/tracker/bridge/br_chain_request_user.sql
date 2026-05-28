

select distinct
    chain_request_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_chain_request_user"
where chain_request_id is not null
  and user_id is not null