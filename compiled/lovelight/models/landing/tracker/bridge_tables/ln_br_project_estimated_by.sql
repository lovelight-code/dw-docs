-- ============================================================
-- Model: ln_br_project_estimated_by
-- Description: Landing-layer bridge view for landing_tracker.field_2859
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__operation_estimated_by
-- Bridge owner: Project | target: Operations
-- Field: field_2859 | label: Estimated By
-- ============================================================

select
    id_from as project_id,
    id_to as operation_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2859