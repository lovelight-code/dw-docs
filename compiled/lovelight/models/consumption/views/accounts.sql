

select
    account_sk,
    account_id,
    account_name,
    account_type,
    account_description,
    primary_phone,
    abn,
    acn,
    myob_customer_id,
    myob_customer_class,
    volume_builder_id_portal
from "dw_dev"."consumption"."ops_accounts"