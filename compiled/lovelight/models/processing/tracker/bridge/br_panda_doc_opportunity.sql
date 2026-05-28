

select distinct
    panda_doc_id,
    opportunity_id
from "dw_dev"."landing_tracker"."ln_br_panda_doc_opportunity"
where panda_doc_id is not null
  and opportunity_id is not null