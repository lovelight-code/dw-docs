-- ============================================================
-- Model: ln_br_service_call_ops_allocation_operation
-- Description: Landing-layer bridge view for landing_tracker.field_3142
-- Auto-generated from canonical metadata
-- Canonical: bridge__service_call_ops_allocation__operation
-- Bridge owner: Service Call Ops Allocation | target: Operations
-- Field: field_3142 | label: Operation
-- ============================================================

select
    id_from as service_call_ops_allocation_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3142