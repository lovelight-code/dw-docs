
    
    



select send_slack_summary
from "dw_dev"."processing_tracker"."dim_salespeople"
where send_slack_summary is null


