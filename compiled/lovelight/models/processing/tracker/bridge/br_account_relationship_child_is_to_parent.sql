

select distinct
    account_relationship_id,
    account_relationship_type_id
from "dw_dev"."landing_tracker"."ln_br_account_relationship_child_is_to_parent"
where account_relationship_id is not null
  and account_relationship_type_id is not null