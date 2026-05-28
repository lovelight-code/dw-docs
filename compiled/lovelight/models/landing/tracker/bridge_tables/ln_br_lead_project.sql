-- ============================================================
-- Model: ln_br_lead_project
-- Description: Landing-layer bridge view for landing_tracker.field_3039
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__project
-- Bridge owner: Leads | target: Project
-- Field: field_3039 | label: Project
-- ============================================================

select
    id_from as lead_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3039