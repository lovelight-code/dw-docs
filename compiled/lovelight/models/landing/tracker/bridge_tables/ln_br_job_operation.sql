-- ============================================================
-- Model: ln_br_job_operation
-- Description: Landing-layer bridge view for landing_tracker.field_1277
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__operation
-- Bridge owner: Jobs | target: Operations
-- Field: field_1277 | label: Ops Team
-- ============================================================

select
    id_from as job_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1277