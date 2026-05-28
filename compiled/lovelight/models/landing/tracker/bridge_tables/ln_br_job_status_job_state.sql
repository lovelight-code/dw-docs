-- ============================================================
-- Model: ln_br_job_status_job_state
-- Description: Landing-layer bridge view for landing_tracker.field_1567
-- Auto-generated from canonical metadata
-- Canonical: bridge__job_status__job_state
-- Bridge owner: Job Statuses | target: Job State
-- Field: field_1567 | label: Job Active State
-- ============================================================

select
    id_from as job_statu_id,
    id_to as job_state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1567