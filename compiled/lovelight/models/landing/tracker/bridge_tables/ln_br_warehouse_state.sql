-- ============================================================
-- Model: ln_br_warehouse_state
-- Description: Landing-layer bridge view for landing_tracker.field_1587
-- Auto-generated from canonical metadata
-- Canonical: bridge__warehouse__state
-- Bridge owner: Warehouse | target: States
-- Field: field_1587 | label: State
-- ============================================================

select
    id_from as warehouse_id,
    id_to as state_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1587