

select distinct
    image_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_image_project"
where image_id is not null
  and project_id is not null