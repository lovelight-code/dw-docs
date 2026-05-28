-- ============================================================
-- Model: ln_br_project_inducted_installer
-- Description: Landing-layer bridge view for landing_tracker.field_2971
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__installer_inducted_installer
-- Bridge owner: Project | target: Installers
-- Field: field_2971 | label: Inducted Installers
-- ============================================================

select
    id_from as project_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2971