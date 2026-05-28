-- ============================================================
-- Model: ln_br_opportunity_job
-- Description: Landing-layer bridge view for landing_tracker.field_134
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__job
-- Bridge owner: Opportunities | target: Jobs
-- Field: field_134 | label: Jobs
-- ============================================================

select
    id_from as opportunity_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_134