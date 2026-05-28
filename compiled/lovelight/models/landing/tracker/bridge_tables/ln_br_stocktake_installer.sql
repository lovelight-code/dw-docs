-- ============================================================
-- Model: ln_br_stocktake_installer
-- Description: Landing-layer bridge view for landing_tracker.field_1965
-- Auto-generated from canonical metadata
-- Canonical: bridge__stocktake__installer
-- Bridge owner: Stocktake | target: Installers
-- Field: field_1965 | label: Installer
-- ============================================================

select
    id_from as stocktake_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1965