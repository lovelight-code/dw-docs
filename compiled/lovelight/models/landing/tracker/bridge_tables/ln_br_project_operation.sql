-- ============================================================
-- Model: ln_br_project_operation
-- Description: Landing-layer bridge view for landing_tracker.field_2254
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__operation
-- Bridge owner: Project | target: Operations
-- Field: field_2254 | label: Operations
-- ============================================================

select
    id_from as project_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2254