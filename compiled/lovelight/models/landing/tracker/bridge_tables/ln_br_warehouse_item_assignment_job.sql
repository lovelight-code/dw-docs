-- ============================================================
-- Model: ln_br_warehouse_item_assignment_job
-- Description: Landing-layer bridge view for landing_tracker.field_1086
-- Auto-generated from canonical metadata
-- Canonical: bridge__warehouse_item_assignment__job
-- Bridge owner: Warehouse Item Assignments | target: Jobs
-- Field: field_1086 | label: Job
-- ============================================================

select
    id_from as warehouse_item_assignment_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1086