-- ============================================================
-- Model: ln_br_lead_state
-- Description: Landing-layer bridge view for landing_tracker.field_1724
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__state
-- Bridge owner: Leads | target: States
-- Field: field_1724 | label: State
-- ============================================================

select
    id_from as lead_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1724