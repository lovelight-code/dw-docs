

select
    lead_sk,
    lead_id,
    src_sys_cd,
    lead_name,
    status,
    account,
    contact,
    state,
    business_unit,
    division,
    sales_email,
    created_date,
    date_quoted,
    date_closed,
    value_ex_gst,
    lost_reason
from "dw_dev"."consumption"."ops_leads"