-- ============================================================
-- Model: ln_br_opportunity_operation
-- Description: Landing-layer bridge view for landing_tracker.field_1275
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__operation
-- Bridge owner: Opportunities | target: Operations
-- Field: field_1275 | label: Quoted By
-- ============================================================

select
    id_from as opportunity_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1275