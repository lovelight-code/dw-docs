-- ============================================================
-- Model: ln_br_pm_call_out_job
-- Description: Landing-layer bridge view for landing_tracker.field_2158
-- Auto-generated from canonical metadata
-- Canonical: bridge__pm_call_out__job
-- Bridge owner: PM Call Out | target: Jobs
-- Field: field_2158 | label: Job
-- ============================================================

select
    id_from as pm_call_out_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2158