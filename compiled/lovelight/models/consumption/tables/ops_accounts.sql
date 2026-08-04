

select
    a.account_sk,
    a.account_id,
    a.src_sys_cd,
    a.src_sys_id,
    a.account_name,
    a.account_type,
    a.account_description,
    a.primary_phone,
    a.abn,
    a.acn,
    a.myob_customer_id,
    a.myob_customer_class,
    a.volume_builder_id_portal,
    a.src_created_at,
    a.src_updated_at

from "dw_dev"."processing_tracker"."dim_account" a