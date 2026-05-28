



select
    id,
    src_sys_id,
    src_created_at::timestamp as src_created_at,
    src_updated_at::timestamp as src_updated_at,
    number,
    status,
    status_icon,
    status_with_icon,
    status_display,
    status_available_from_order,
    is_complete,
    complete,
    dlt_load_id,
    dlt_id,
    created_at::timestamp as ln_created_at,
    updated_at::timestamp as ln_updated_at
from "dw_dev"."landing_tracker"."ln_job_status"
