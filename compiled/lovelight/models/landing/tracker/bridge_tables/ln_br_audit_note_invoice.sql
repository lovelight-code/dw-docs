-- ============================================================
-- Model: ln_br_audit_note_invoice
-- Description: Landing-layer bridge view for landing_tracker.field_1978
-- Auto-generated from canonical metadata
-- Canonical: bridge__audit_note__invoice
-- Bridge owner: Audit Notes | target: Invoices
-- Field: field_1978 | label: Invoice
-- ============================================================

select
    id_from as audit_note_id,
    id_to as invoice_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1978