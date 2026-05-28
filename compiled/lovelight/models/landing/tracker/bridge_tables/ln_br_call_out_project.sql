-- ============================================================
-- Model: ln_br_call_out_project
-- Description: Landing-layer bridge view for landing_tracker.field_2633
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__project
-- Bridge owner: Call Outs | target: Project
-- Field: field_2633 | label: Project
-- ============================================================

select
    id_from as call_out_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2633