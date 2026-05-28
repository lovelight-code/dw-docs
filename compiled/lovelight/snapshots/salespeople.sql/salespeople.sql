



select
    id,
    user_id,
    src_created_at::timestamp as src_created_at,
    src_updated_at::timestamp as src_updated_at,
    utility_key,
    approval_status,
    account_status,
    name_first,
    name_last,
    name_full,
    email_email,
    password,
    user_status,
    user_role,
    phone_number,
    phone_full,
    auto_increment,
    send_slack_summary,
    unsubscribe_from_callout_invite,
    name_ctc,
    full_name_for_reporting,
    test,
    myob_salesperson_id,
    is_reported_sale,
    dlt_load_id,
    dlt_id,
    created_at::timestamp as ln_created_at,
    updated_at::timestamp as ln_updated_at
from "dw_dev"."landing_tracker"."ln_salespeople"
