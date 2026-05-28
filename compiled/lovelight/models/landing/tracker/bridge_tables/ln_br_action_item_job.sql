-- ============================================================
-- Model: ln_br_action_item_job
-- Description: Landing-layer bridge view for landing_tracker.field_3157
-- Auto-generated from canonical metadata
-- Canonical: bridge__action_item__job
-- Bridge owner: Action Items | target: Jobs
-- Field: field_3157 | label: Job
-- ============================================================

select
    id_from as action_item_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3157