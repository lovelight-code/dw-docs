-- ============================================================
-- Model: ln_br_image_project
-- Description: Landing-layer bridge view for landing_tracker.field_2694
-- Auto-generated from canonical metadata
-- Canonical: bridge__image__project
-- Bridge owner: Images | target: Project
-- Field: field_2694 | label: Project
-- ============================================================

select
    id_from as image_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2694