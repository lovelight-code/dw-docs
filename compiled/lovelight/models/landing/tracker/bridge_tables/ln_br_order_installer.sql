-- ============================================================
-- Model: ln_br_order_installer
-- Description: Landing-layer bridge view for landing_tracker.field_1006
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__installer
-- Bridge owner: Orders | target: Installers
-- Field: field_1006 | label: Who Picked Up Order?
-- ============================================================

select
    id_from as order_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1006