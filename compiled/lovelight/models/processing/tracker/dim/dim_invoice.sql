

-- ============================================================
-- Model: dim_invoice
-- Description: Invoice dimension containing slowly changing descriptive attributes.
-- Source: invoice (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."invoice"
    where dbt_valid_to is null
      and (deleted is not true)
)

select
    md5(id::varchar)                                           as invoice_sk,
    id                                                         as invoice_id,
    src_sys_id,
    status,
    state,
    business_unit,
    paid                                                       as is_paid,
    coalesce(xero_invoice_number, myob_invoice_reference_number, '') as invoice_number,
    xero_invoice_number,
    myob_invoice_reference_number,
    xero_invoice_id,
    xero_invoice_link,
    myob_invoice_link,
    overdue_status,
    is_sent,
    invoice_type,
    service_option,
    'KNACK'                                                    as src_sys_cd,
    src_sys_id                                                 as src_sys_id_ref,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end)  as is_current,
    current_timestamp                                          as proc_created_at,
    current_timestamp                                          as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5'                                      as load_run_id
from current