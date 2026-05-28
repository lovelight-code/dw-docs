-- ============================================================
-- Model: ln_br_state_division_division
-- Description: Landing-layer bridge view for landing_tracker.field_1573
-- Auto-generated from canonical metadata
-- Canonical: bridge__state_division__division
-- Bridge owner: State Divisions | target: Divisions
-- Field: field_1573 | label: Division
-- ============================================================

select
    id_from as state_division_id,
    id_to as division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1573