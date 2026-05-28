

select distinct
    sample_request_id,
    oh_s_volume_site_id
from "dw_dev"."landing_tracker"."ln_br_sample_request_oh_and_s_volume_site"
where sample_request_id is not null
  and oh_s_volume_site_id is not null