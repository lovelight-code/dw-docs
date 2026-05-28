-- ============================================================
-- Model: ln_br_installer_invoice_item_installer_invoice
-- Description: Landing-layer bridge view for landing_tracker.field_2704
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer_invoice_item__installer_invoice
-- Bridge owner: Installer Invoice Item | target: Installer Invoices
-- Field: field_2704 | label: Installer Invoice
-- ============================================================

select
    id_from as installer_invoice_item_id,
    id_to as installer_invoice_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2704