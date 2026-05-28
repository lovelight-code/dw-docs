-- ============================================================
-- Model: ln_br_job_job_order_status
-- Description: Landing-layer bridge view for landing_tracker.field_2974
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__job_order_status
-- Bridge owner: Jobs | target: Job Order Statuses
-- Field: field_2974 | label: Job Order Status
-- ============================================================

select
    id_from as job_id,
    id_to as job_order_status_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2974