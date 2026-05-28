-- ============================================================
-- Model: ln_br_retention_invoice
-- Description: Landing-layer bridge view for landing_tracker.field_3084
-- Auto-generated from canonical metadata
-- Canonical: bridge__retention__invoice
-- Bridge owner: Retention | target: Invoices
-- Field: field_3084 | label: Invoice
-- ============================================================

select
    id_from as retention_id,
    id_to as invoice_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3084