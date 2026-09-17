

select
    id,
    callout_id,
    date,
    created_date,
    callout,
    business_unit,
    state,
    type,
    status,
    outcome,
    is_rescheduled,
    is_future,
    priority,
    installer_report
from "dw_dev"."integration"."ops_callouts"