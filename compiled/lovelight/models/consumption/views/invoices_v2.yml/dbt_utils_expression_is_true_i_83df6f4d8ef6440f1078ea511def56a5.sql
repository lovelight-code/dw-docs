



select
    1
from "dw_dev"."consumption"."invoices_v2"

where not(inc_gst_amount = round(value_ex_gst + gst, 2))

