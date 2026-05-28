-- ============================================================
-- Model: ln_br_image_job
-- Description: Landing-layer bridge view for landing_tracker.field_1720
-- Auto-generated from canonical metadata
-- Canonical: bridge__image__job
-- Bridge owner: Images | target: Jobs
-- Field: field_1720 | label: Job
-- ============================================================

select
    id_from as image_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1720