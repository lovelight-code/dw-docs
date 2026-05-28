-- ============================================================
-- Model: ln_br_scheduler_state_division
-- Description: Landing-layer bridge view for landing_tracker.field_1575
-- Auto-generated from canonical metadata
-- Canonical: bridge__scheduler__state_division
-- Bridge owner: Schedulers | target: State Divisions
-- Field: field_1575 | label: State Divisions
-- ============================================================

select
    id_from as scheduler_id,
    id_to as state_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1575