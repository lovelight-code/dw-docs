

select distinct
    development_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_development_builder_company_name"
where development_id is not null
  and account_id is not null