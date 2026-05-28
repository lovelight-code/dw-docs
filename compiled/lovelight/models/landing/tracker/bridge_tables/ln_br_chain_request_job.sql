-- ============================================================
-- Model: ln_br_chain_request_job
-- Description: Landing-layer bridge view for landing_tracker.field_2003
-- Auto-generated from canonical metadata
-- Canonical: bridge__chain_request__job
-- Bridge owner: Chain Request | target: Jobs
-- Field: field_2003 | label: Job
-- ============================================================

select
    id_from as chain_request_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2003