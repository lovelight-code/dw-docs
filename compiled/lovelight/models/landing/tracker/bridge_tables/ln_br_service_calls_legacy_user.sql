-- ============================================================
-- Model: ln_br_service_calls_legacy_user
-- Description: Landing-layer bridge view for landing_tracker.field_894
-- Auto-generated from canonical metadata
-- Canonical: bridge__service_calls_legacy__user
-- Bridge owner: Service Calls [legacy] | target: Users
-- Field: field_894 | label: Created By
-- ============================================================

select
    id_from as service_calls_legacy_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_894