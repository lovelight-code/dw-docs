-- ============================================================
-- Model: ln_br_installer_invoice_installer
-- Description: Landing-layer bridge view for landing_tracker.field_2702
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer_invoice__installer
-- Bridge owner: Installer Invoices | target: Installers
-- Field: field_2702 | label: Installer
-- ============================================================

select
    id_from as installer_invoice_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2702