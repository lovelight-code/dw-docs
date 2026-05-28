-- ============================================================
-- Model: ln_br_opportunity_project
-- Description: Landing-layer bridge view for landing_tracker.field_2632
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__project
-- Bridge owner: Opportunities | target: Project
-- Field: field_2632 | label: Project
-- ============================================================

select
    id_from as opportunity_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2632