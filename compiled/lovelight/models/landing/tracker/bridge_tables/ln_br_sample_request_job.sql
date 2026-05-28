-- ============================================================
-- Model: ln_br_sample_request_job
-- Description: Landing-layer bridge view for landing_tracker.field_2466
-- Auto-generated from canonical metadata
-- Canonical: bridge__sample_request__job
-- Bridge owner: Sample Requests | target: Jobs
-- Field: field_2466 | label: Job
-- ============================================================

select
    id_from as sample_request_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2466