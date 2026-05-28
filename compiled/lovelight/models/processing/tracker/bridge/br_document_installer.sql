

select distinct
    document_id,
    installer_id
from "dw_dev"."landing_tracker"."ln_br_document_installer"
where document_id is not null
  and installer_id is not null