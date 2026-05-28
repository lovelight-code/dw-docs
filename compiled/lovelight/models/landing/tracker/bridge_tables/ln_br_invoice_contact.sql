-- ============================================================
-- Model: ln_br_invoice_contact
-- Description: Landing-layer bridge view for landing_tracker.field_1396
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__contact
-- Bridge owner: Invoices | target: Contacts
-- Field: field_1396 | label: Invoicing Contact
-- ============================================================

select
    id_from as invoice_id,
    id_to as contact_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1396