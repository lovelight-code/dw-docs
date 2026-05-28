-- ============================================================
-- Model: ln_br_job_job_status
-- Description: Landing-layer bridge view for landing_tracker.field_245
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__job_status
-- Bridge owner: Jobs | target: Job Statuses
-- Field: field_245 | label: Status
-- ============================================================

select
    id_from as job_id,
    id_to as job_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_245