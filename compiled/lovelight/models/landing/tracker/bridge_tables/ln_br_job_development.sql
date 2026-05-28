-- ============================================================
-- Model: ln_br_job_development
-- Description: Landing-layer bridge view for landing_tracker.field_186
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__development
-- Bridge owner: Jobs | target: Developments
-- Field: field_186 | label: Development
-- ============================================================

select
    id_from as job_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_186