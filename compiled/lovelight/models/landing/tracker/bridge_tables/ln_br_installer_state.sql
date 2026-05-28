-- ============================================================
-- Model: ln_br_installer_state
-- Description: Landing-layer bridge view for landing_tracker.field_1583
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer__state
-- Bridge owner: Installers | target: States
-- Field: field_1583 | label: State
-- ============================================================

select
    id_from as installer_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1583