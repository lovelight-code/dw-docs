-- ============================================================
-- Model: ln_br_job_installer
-- Description: Landing-layer bridge view for landing_tracker.field_2553
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__installer
-- Bridge owner: Jobs | target: Installers
-- Field: field_2553 | label: Most Recents Installer(s)
-- ============================================================

select
    id_from as job_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2553