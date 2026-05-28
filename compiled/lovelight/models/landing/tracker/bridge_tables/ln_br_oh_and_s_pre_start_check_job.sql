-- ============================================================
-- Model: ln_br_oh_and_s_pre_start_check_job
-- Description: Landing-layer bridge view for landing_tracker.field_2305
-- Auto-generated from canonical metadata
-- Canonical: bridge__oh_and_s_pre_start_check__job
-- Bridge owner: [OH&S] Pre-Start Checks | target: Jobs
-- Field: field_2305 | label: Job
-- ============================================================

select
    id_from as oh_and_s_pre_start_check_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2305