



select
    1
from "dw_dev"."consumption"."invoices_v2"

where not(trim(branch) in ('02LOVEMAIN', '21EW', '12TWDMAIN', '41CSMAIN', '31LI', '03VIC', '04NSW', '05QLD', '51RESEARCH'))

