-- ============================================================
-- Model: ln_br_order_project
-- Description: Landing-layer bridge view for landing_tracker.field_2610
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__project
-- Bridge owner: Orders | target: Project
-- Field: field_2610 | label: Project
-- ============================================================

select
    id_from as order_id,
    id_to as project_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2610