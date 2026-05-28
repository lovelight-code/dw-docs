-- ============================================================
-- Model: ln_br_job_state_division
-- Description: Landing-layer bridge view for landing_tracker.field_1576
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__state_division
-- Bridge owner: Jobs | target: State Divisions
-- Field: field_1576 | label: State Division
-- ============================================================

select
    id_from as job_id,
    id_to as state_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1576