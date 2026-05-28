-- ============================================================
-- Model: ln_br_invoice_job_status
-- Description: Landing-layer bridge view for landing_tracker.field_609
-- Auto-generated from canonical metadata
-- Canonical: bridge__invoice__job_status
-- Bridge owner: Invoices | target: Job Statuses
-- Field: field_609 | label: Job Status
-- ============================================================

select
    id_from as invoice_id,
    id_to as job_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_609