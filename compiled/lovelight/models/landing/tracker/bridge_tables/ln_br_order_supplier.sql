-- ============================================================
-- Model: ln_br_order_supplier
-- Description: Landing-layer bridge view for landing_tracker.field_1446
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__supplier
-- Bridge owner: Orders | target: Suppliers
-- Field: field_1446 | label: Supplier
-- ============================================================

select
    id_from as order_id,
    id_to as supplier_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1446