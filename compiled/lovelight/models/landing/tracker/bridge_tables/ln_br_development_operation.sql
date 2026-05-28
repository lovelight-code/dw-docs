-- ============================================================
-- Model: ln_br_development_operation
-- Description: Landing-layer bridge view for landing_tracker.field_1283
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__operation
-- Bridge owner: Developments | target: Operations
-- Field: field_1283 | label: Ops Team
-- ============================================================

select
    id_from as development_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1283