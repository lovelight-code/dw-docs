-- ============================================================
-- Model: ln_br_installer_invoice_item_installer
-- Description: Landing-layer bridge view for landing_tracker.field_2648
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer_invoice_item__installer
-- Bridge owner: Installer Invoice Item | target: Installers
-- Field: field_2648 | label: Installer
-- ============================================================

select
    id_from as installer_invoice_item_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2648