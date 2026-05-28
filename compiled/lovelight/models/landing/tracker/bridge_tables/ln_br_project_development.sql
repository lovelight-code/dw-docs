-- ============================================================
-- Model: ln_br_project_development
-- Description: Landing-layer bridge view for landing_tracker.field_2250
-- Auto-generated from canonical metadata
-- Canonical: bridge__project__development
-- Bridge owner: Project | target: Developments
-- Field: field_2250 | label: Development
-- ============================================================

select
    id_from as project_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2250