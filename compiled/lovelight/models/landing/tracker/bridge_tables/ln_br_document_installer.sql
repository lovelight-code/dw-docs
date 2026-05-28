-- ============================================================
-- Model: ln_br_document_installer
-- Description: Landing-layer bridge view for landing_tracker.field_1958
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__installer
-- Bridge owner: Documents | target: Installers
-- Field: field_1958 | label: Installer Uploaded
-- ============================================================

select
    id_from as document_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1958