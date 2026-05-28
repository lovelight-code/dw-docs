-- ============================================================
-- Model: ln_br_scheduler_state
-- Description: Landing-layer bridge view for landing_tracker.field_1560
-- Auto-generated from canonical metadata
-- Canonical: bridge__scheduler__state
-- Bridge owner: Schedulers | target: States
-- Field: field_1560 | label: State
-- ============================================================

select
    id_from as scheduler_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1560