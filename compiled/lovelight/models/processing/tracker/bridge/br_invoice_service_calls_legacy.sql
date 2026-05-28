

select distinct
    invoice_id,
    service_calls_legacy_id
from "dw_dev"."landing_tracker"."ln_br_invoice_service_calls_legacy"
where invoice_id is not null
  and service_calls_legacy_id is not null