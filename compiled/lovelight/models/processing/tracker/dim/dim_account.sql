

-- ============================================================
-- Model: dim_account
-- Description: Account dimension containing slowly changing descriptive attributes.
-- Source: account (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."account"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as account_sk,
    id as account_id,
    initcap(trim(account_company_name)) as account_name,
    account_type,
    description_general_note as account_description,
    lpad(cast(primary_phone as varchar), 10, '0') as primary_phone,
    cast(abn as varchar) as abn,
    myob_customer_id,
    myob_customer_class,
    cast(acn as varchar) as acn,
    volume_builder_id_portal,
    'KNACK' as src_sys_cd,
    src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current