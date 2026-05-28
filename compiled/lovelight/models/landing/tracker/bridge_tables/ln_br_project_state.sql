-- ============================================================
-- Model: ln_br_project_state
-- Description: Landing-layer bridge view for landing_tracker.field_2251
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__state
-- Bridge owner: Project | target: States
-- Field: field_2251 | label: State
-- ============================================================

select
    id_from as project_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2251