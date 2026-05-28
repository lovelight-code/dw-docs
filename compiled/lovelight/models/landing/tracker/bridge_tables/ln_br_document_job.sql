-- ============================================================
-- Model: ln_br_document_job
-- Description: Landing-layer bridge view for landing_tracker.field_207
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__job
-- Bridge owner: Documents | target: Jobs
-- Field: field_207 | label: Job
-- ============================================================

select
    id_from as document_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_207