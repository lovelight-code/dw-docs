-- ============================================================
-- Model: ln_br_call_out_job
-- Description: Landing-layer bridge view for landing_tracker.field_2593
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__job
-- Bridge owner: Call Outs | target: Jobs
-- Field: field_2593 | label: Jobs Removed At Review
-- ============================================================

select
    id_from as call_out_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2593