-- ============================================================
-- Model: ln_br_job_installers_legacy
-- Description: Landing-layer bridge view for landing_tracker.field_327
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__installers_legacy
-- Bridge owner: Jobs | target: Installers (Legacy)
-- Field: field_327 | label: Installer (legacy)
-- ============================================================

select
    id_from as job_id,
    id_to as installers_legacy_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_327