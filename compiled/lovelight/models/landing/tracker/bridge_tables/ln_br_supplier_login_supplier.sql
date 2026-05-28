-- ============================================================
-- Model: ln_br_supplier_login_supplier
-- Description: Landing-layer bridge view for landing_tracker.field_1465
-- Auto-generated from canonical metadata
-- Canonical: bridge__supplier_login__supplier
-- Bridge owner: Supplier Login | target: Suppliers
-- Field: field_1465 | label: Supplier
-- ============================================================

select
    id_from as supplier_login_id,
    id_to as supplier_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1465