-- ============================================================
-- Model: ln_br_service_calls_legacy_state_division
-- Description: Landing-layer bridge view for landing_tracker.field_1601
-- Auto-generated from canonical metadata
-- Canonical: bridge__service_calls_legacy__state_division
-- Bridge owner: Service Calls [legacy] | target: State Divisions
-- Field: field_1601 | label: State Business Unit
-- ============================================================

select
    id_from as service_calls_legacy_id,
    id_to as state_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1601