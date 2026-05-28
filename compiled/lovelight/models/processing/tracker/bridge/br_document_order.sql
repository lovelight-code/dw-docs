

select distinct
    document_id,
    order_id
from "dw_dev"."landing_tracker"."ln_br_document_order"
where document_id is not null
  and order_id is not null