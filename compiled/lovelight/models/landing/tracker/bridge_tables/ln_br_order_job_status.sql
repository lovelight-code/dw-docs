-- ============================================================
-- Model: ln_br_order_job_status
-- Description: Landing-layer bridge view for landing_tracker.field_598
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__job_status
-- Bridge owner: Orders | target: Job Statuses
-- Field: field_598 | label: Job Status
-- ============================================================

select
    id_from as order_id,
    id_to as job_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_598