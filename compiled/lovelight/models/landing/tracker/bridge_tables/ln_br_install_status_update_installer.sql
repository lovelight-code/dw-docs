-- ============================================================
-- Model: ln_br_install_status_update_installer
-- Description: Landing-layer bridge view for landing_tracker.field_2745
-- Auto-generated from canonical metadata
-- Canonical: bridge__install_status_update__installer
-- Bridge owner: Install Status Updates | target: Installers
-- Field: field_2745 | label: Measured By
-- ============================================================

select
    id_from as install_status_update_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2745