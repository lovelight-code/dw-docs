-- ============================================================
-- Model: ln_br_order_project_group
-- Description: Landing-layer bridge view for landing_tracker.field_2845
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__project_group
-- Bridge owner: Orders | target: Project Group
-- Field: field_2845 | label: Project Group
-- ============================================================

select
    id_from as order_id,
    id_to as project_group_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2845