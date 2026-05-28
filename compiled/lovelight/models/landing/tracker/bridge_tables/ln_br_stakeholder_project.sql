-- ============================================================
-- Model: ln_br_stakeholder_project
-- Description: Landing-layer bridge view for landing_tracker.field_2629
-- Auto-generated from canonical metadata
-- Canonical: bridge__stakeholder__project
-- Bridge owner: Stakeholders | target: Project
-- Field: field_2629 | label: Project
-- ============================================================

select
    id_from as stakeholder_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2629