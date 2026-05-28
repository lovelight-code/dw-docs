-- ============================================================
-- Model: ln_br_invoice_state_division
-- Description: Landing-layer bridge view for landing_tracker.field_1631
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__state_division
-- Bridge owner: Invoices | target: State Divisions
-- Field: field_1631 | label: State Division
-- ============================================================

select
    id_from as invoice_id,
    id_to as state_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1631