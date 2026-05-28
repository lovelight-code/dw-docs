

select distinct
    action_item_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_action_item_marked_complete_by"
where action_item_id is not null
  and user_id is not null