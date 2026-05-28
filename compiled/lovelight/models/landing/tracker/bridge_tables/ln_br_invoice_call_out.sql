-- ============================================================
-- Model: ln_br_invoice_call_out
-- Description: Landing-layer bridge view for landing_tracker.field_1629
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__call_out
-- Bridge owner: Invoices | target: Call Outs
-- Field: field_1629 | label: Call Out
-- ============================================================

select
    id_from as invoice_id,
    id_to as call_out_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1629