

select distinct
    image_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_image_development"
where image_id is not null
  and development_id is not null