-- ============================================================
-- Model: ln_br_supplier_supplier_login
-- Description: Landing-layer bridge view for landing_tracker.field_1467
-- Auto-generated from canonical metadata
-- Canonical: bridge__supplier__supplier_login
-- Bridge owner: Suppliers | target: Supplier Login
-- Field: field_1467 | label: Primary Contact
-- ============================================================

select
    id_from as supplier_id,
    id_to as supplier_login_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1467