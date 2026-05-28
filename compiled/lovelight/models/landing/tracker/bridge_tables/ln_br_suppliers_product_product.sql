-- ============================================================
-- Model: ln_br_suppliers_product_product
-- Description: Landing-layer bridge view for landing_tracker.field_1463
-- Auto-generated from canonical metadata
-- Canonical: bridge__suppliers_product__product
-- Bridge owner: Suppliers > Products | target: Products
-- Field: field_1463 | label: Product
-- ============================================================

select
    id_from as suppliers_product_id,
    id_to as product_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1463