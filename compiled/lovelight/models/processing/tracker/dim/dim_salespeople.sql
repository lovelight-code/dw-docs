

-- ============================================================
-- Model: dim_salespeople
-- Description: Salespeople dimension containing slowly changing descriptive attributes.
-- Source: salespeople (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."salespeople"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as salespeople_sk,
    id as salespeople_id,
    user_id,
    name_first as first_name,
    name_last as last_name,
    name_full as full_name,
    email_email as email,
    user_status,
    user_role,
    phone_number,
    phone_full,
    send_slack_summary,
    unsubscribe_from_callout_invite,
    myob_salesperson_id,
    is_reported_sale,
    'KNACK' as src_sys_cd,
    auto_increment as src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current