

select
    vendor_id,
    vendor_name,
    vendor_status,
    vendor_type,
    vendor_class,
    abn,
    legal_name,
    terms,
    currency_id,
    last_modified_on,
    created_on,
    src_sys_cd,
    src_sys_id
from "dw_dev"."processing_myob"."dim_supplier"