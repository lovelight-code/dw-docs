-- ============================================================
-- Model: ln_br_project_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_2854
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__opportunity
-- Bridge owner: Project | target: Opportunities
-- Field: field_2854 | label: Original Quote
-- ============================================================

select
    id_from as project_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2854