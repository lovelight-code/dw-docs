-- ============================================================
-- Model: ln_br_invoice_operation
-- Description: Landing-layer bridge view for landing_tracker.field_2153
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__operation
-- Bridge owner: Invoices | target: Operations
-- Field: field_2153 | label: Job Ops Person
-- ============================================================

select
    id_from as invoice_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2153