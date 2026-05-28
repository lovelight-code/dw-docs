

select distinct
    image_id,
    issue_id
from "dw_dev"."landing_tracker"."ln_br_image_issue"
where image_id is not null
  and issue_id is not null