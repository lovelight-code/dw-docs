



select
    id,
    src_created_at::timestamp as src_created_at,
    src_updated_at::timestamp as src_updated_at,
    number,
    opportunity_statuses_name,
    completed,
    dlt_load_id,
    dlt_id,
    created_at::timestamp as ln_created_at,
    updated_at::timestamp as ln_updated_at
from "dw_dev"."landing_tracker"."ln_opportunity_status"
