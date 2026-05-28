-- ============================================================
-- Model: ln_br_project_group_product
-- Description: Landing-layer bridge view for landing_tracker.field_2835
-- Auto-generated from canonical metadata
-- Canonical: bridge__project_group__product
-- Bridge owner: Project Group | target: Products
-- Field: field_2835 | label: Batch Order - Product
-- ============================================================

select
    id_from as project_group_id,
    id_to as product_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2835