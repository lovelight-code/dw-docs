-- ============================================================
-- Model: ln_br_invoice_service_calls_legacy
-- Description: Landing-layer bridge view for landing_tracker.field_1014
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__service_calls_legacy
-- Bridge owner: Invoices | target: Service Calls [legacy]
-- Field: field_1014 | label: Service Call
-- ============================================================

select
    id_from as invoice_id,
    id_to as service_calls_legacy_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1014