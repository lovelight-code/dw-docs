

select distinct
    metric_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_metric_user"
where metric_id is not null
  and user_id is not null