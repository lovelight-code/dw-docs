-- ============================================================
-- Model: ln_br_invoice_job
-- Description: Landing-layer bridge view for landing_tracker.field_155
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__job
-- Bridge owner: Invoices | target: Jobs
-- Field: field_155 | label: Job
-- ============================================================

select
    id_from as invoice_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_155