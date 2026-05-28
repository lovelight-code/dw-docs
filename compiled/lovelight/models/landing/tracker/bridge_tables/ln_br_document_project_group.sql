-- ============================================================
-- Model: ln_br_document_project_group
-- Description: Landing-layer bridge view for landing_tracker.field_2739
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__project_group
-- Bridge owner: Documents | target: Project Group
-- Field: field_2739 | label: Project Group
-- ============================================================

select
    id_from as document_id,
    id_to as project_group_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2739