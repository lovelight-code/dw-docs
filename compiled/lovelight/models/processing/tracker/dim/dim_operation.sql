

-- ============================================================
-- Model: dim_operation
-- Description: Operations people dimension containing slowly changing descriptive attributes.
-- Source: operation (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."operation"
    where dbt_valid_to is null
)

select
    md5(id::varchar)                     as operation_sk,
    id                                   as operation_id,
    user_id,
    name_first                           as first_name,
    name_last                            as last_name,
    name_full                            as full_name,
    name_ctc,
    email_email                          as email,
    phone_number,
    phone_full,
    primary_role,
    user_status,
    user_role,
    account_status,
    approval_status,
    unsubscribe_from_callout_invite,
    profile_keys,
    utility_key,
    'KNACK'                              as src_sys_cd,
    null                                 as src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp                    as proc_created_at,
    current_timestamp                    as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5'                as load_run_id
from current