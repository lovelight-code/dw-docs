-- ============================================================
-- Model: ln_br_installer_division
-- Description: Landing-layer bridge view for landing_tracker.field_1584
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer__division
-- Bridge owner: Installers | target: Divisions
-- Field: field_1584 | label: Divisions
-- ============================================================

select
    id_from as installer_id,
    id_to as division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1584