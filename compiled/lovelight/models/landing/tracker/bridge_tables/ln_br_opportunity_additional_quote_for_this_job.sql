-- ============================================================
-- Model: ln_br_opportunity_additional_quote_for_this_job
-- Description: Landing-layer bridge view for landing_tracker.field_2598
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__job_additional_quote_for_this_job
-- Bridge owner: Opportunities | target: Jobs
-- Field: field_2598 | label: Additional Quote For This Job
-- ============================================================

select
    id_from as opportunity_id,
    id_to as job_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2598