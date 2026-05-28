-- ============================================================
-- Model: ln_br_invoice_user
-- Description: Landing-layer bridge view for landing_tracker.field_1402
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__user
-- Bridge owner: Invoices | target: Users
-- Field: field_1402 | label: Sent To Xero By
-- ============================================================

select
    id_from as invoice_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1402