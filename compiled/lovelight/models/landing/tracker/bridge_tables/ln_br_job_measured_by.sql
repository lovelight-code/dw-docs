-- ============================================================
-- Model: ln_br_job_measured_by
-- Description: Landing-layer bridge view for landing_tracker.field_2732
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__installer_measured_by
-- Bridge owner: Jobs | target: Installers
-- Field: field_2732 | label: Measured By
-- ============================================================

select
    id_from as job_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2732