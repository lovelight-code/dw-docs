

select distinct
    image_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_image_user"
where image_id is not null
  and user_id is not null