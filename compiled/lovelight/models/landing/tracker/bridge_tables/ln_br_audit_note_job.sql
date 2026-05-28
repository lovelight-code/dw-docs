-- ============================================================
-- Model: ln_br_audit_note_job
-- Description: Landing-layer bridge view for landing_tracker.field_579
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__job
-- Bridge owner: Audit Notes | target: Jobs
-- Field: field_579 | label: Jobs
-- ============================================================

select
    id_from as audit_note_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_579