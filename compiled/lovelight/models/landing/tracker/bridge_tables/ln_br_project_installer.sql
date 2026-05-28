-- ============================================================
-- Model: ln_br_project_installer
-- Description: Landing-layer bridge view for landing_tracker.field_2709
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__installer
-- Bridge owner: Project | target: Installers
-- Field: field_2709 | label: Lead Installer
-- ============================================================

select
    id_from as project_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2709