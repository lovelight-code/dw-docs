-- ============================================================
-- Model: ln_br_invoice_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_1280
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__salespeople
-- Bridge owner: Invoices | target: Salespeople
-- Field: field_1280 | label: Job Salesperson
-- ============================================================

select
    id_from as invoice_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1280