



select
    id,
    user_id,
    src_created_at::timestamp as src_created_at,
    src_updated_at::timestamp as src_updated_at,
    utility_key,
    account_status,
    approval_status,
    name_first,
    name_last,
    name_full,
    name_ctc,
    first_name,
    email_email,
    email_label,
    phone_number,
    phone_full,
    primary_role,
    user_status,
    user_role,
    profile_keys,
    unsubscribe_from_callout_invite,
    dlt_load_id,
    dlt_id,
    created_at::timestamp as ln_created_at,
    updated_at::timestamp as ln_updated_at
from "dw_dev"."landing_tracker"."ln_operation"
