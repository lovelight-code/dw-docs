



select
    id,
    src_created_at::timestamp as src_created_at,
    src_updated_at::timestamp as src_updated_at,
    description,
    day,
    sort_order,
    dlt_load_id,
    dlt_id,
    created_at::timestamp as ln_created_at,
    updated_at::timestamp as ln_updated_at
from "dw_dev"."landing_tracker"."ln_forecast_project_length"
