-- ============================================================
-- Model: ln_br_installer_state_division
-- Description: Landing-layer bridge view for landing_tracker.field_1585
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer__state_division
-- Bridge owner: Installers | target: State Divisions
-- Field: field_1585 | label: State Divisions
-- ============================================================

select
    id_from as installer_id,
    id_to as state_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1585