-- ============================================================
-- Model: ln_br_install_status_update_installed_by
-- Description: Landing-layer bridge view for landing_tracker.field_2746
-- Auto-generated from canonical metadata
-- Canonical: bridge__install_status_update__installer_installed_by
-- Bridge owner: Install Status Updates | target: Installers
-- Field: field_2746 | label: Installed By
-- ============================================================

select
    id_from as install_status_update_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2746