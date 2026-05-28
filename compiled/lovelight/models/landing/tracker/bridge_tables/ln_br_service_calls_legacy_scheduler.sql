-- ============================================================
-- Model: ln_br_service_calls_legacy_scheduler
-- Description: Landing-layer bridge view for landing_tracker.field_782
-- Auto-generated from canonical metadata
-- Canonical: bridge__service_calls_legacy__scheduler
-- Bridge owner: Service Calls [legacy] | target: Schedulers
-- Field: field_782 | label: Scheduler
-- ============================================================

select
    id_from as service_calls_legacy_id,
    id_to as scheduler_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_782