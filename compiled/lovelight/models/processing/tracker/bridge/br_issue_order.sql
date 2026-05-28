

select distinct
    issue_id,
    order_id
from "dw_dev"."landing_tracker"."ln_br_issue_order"
where issue_id is not null
  and order_id is not null