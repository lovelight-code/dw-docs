-- ============================================================
-- Model: ln_br_project_group_supplier
-- Description: Landing-layer bridge view for landing_tracker.field_2836
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group__supplier
-- Bridge owner: Project Group | target: Suppliers
-- Field: field_2836 | label: Batch Order - Supplier
-- ============================================================

select
    id_from as project_group_id,
    id_to as supplier_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2836