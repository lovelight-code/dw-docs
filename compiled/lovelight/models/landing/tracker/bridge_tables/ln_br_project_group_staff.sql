-- ============================================================
-- Model: ln_br_project_group_staff
-- Description: Landing-layer bridge view for landing_tracker.field_2852
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group__staff
-- Bridge owner: Project Group | target: Staff
-- Field: field_2852 | label: Batch Order - Reviewed By
-- ============================================================

select
    id_from as project_group_id,
    id_to as staff_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2852