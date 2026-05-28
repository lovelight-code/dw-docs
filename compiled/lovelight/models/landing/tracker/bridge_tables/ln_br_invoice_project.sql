-- ============================================================
-- Model: ln_br_invoice_project
-- Description: Landing-layer bridge view for landing_tracker.field_2334
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__project
-- Bridge owner: Invoices | target: Project
-- Field: field_2334 | label: Project
-- ============================================================

select
    id_from as invoice_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2334