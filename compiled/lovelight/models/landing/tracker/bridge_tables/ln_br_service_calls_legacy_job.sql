-- ============================================================
-- Model: ln_br_service_calls_legacy_job
-- Description: Landing-layer bridge view for landing_tracker.field_755
-- Auto-generated from canonical metadata
-- Canonical: bridge__service_calls_legacy__job
-- Bridge owner: Service Calls [legacy] | target: Jobs
-- Field: field_755 | label: Job
-- ============================================================

select
    id_from as service_calls_legacy_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_755