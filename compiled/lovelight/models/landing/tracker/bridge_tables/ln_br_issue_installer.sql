-- ============================================================
-- Model: ln_br_issue_installer
-- Description: Landing-layer bridge view for landing_tracker.field_1932
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue__installer
-- Bridge owner: Issues | target: Installers
-- Field: field_1932 | label: Installer
-- ============================================================

select
    id_from as issue_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1932