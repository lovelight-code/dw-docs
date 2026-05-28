-- ============================================================
-- Model: ln_br_document_project
-- Description: Landing-layer bridge view for landing_tracker.field_2609
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__project
-- Bridge owner: Documents | target: Project
-- Field: field_2609 | label: Project
-- ============================================================

select
    id_from as document_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2609