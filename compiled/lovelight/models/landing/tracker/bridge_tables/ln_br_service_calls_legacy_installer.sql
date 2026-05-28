-- ============================================================
-- Model: ln_br_service_calls_legacy_installer
-- Description: Landing-layer bridge view for landing_tracker.field_1390
-- Auto-generated from canonical metadata
-- Canonical: bridge__service_calls_legacy__installer
-- Bridge owner: Service Calls [legacy] | target: Installers
-- Field: field_1390 | label: Installer
-- ============================================================

select
    id_from as service_calls_legacy_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1390