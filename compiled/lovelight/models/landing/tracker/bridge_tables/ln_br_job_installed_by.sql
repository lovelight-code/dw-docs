-- ============================================================
-- Model: ln_br_job_installed_by
-- Description: Landing-layer bridge view for landing_tracker.field_891
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__installer_installed_by
-- Bridge owner: Jobs | target: Installers
-- Field: field_891 | label: Installed By
-- ============================================================

select
    id_from as job_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_891