-- ============================================================
-- Model: ln_br_suppliers_product_supplier
-- Description: Landing-layer bridge view for landing_tracker.field_1464
-- Auto-generated from canonical metadata
-- Canonical: bridge__suppliers_product__supplier
-- Bridge owner: Suppliers > Products | target: Suppliers
-- Field: field_1464 | label: Supplier
-- ============================================================

select
    id_from as suppliers_product_id,
    id_to as supplier_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1464