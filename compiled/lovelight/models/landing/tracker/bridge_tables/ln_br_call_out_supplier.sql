-- ============================================================
-- Model: ln_br_call_out_supplier
-- Description: Landing-layer bridge view for landing_tracker.field_2379
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__supplier
-- Bridge owner: Call Outs | target: Suppliers
-- Field: field_2379 | label: Supplier at Fault
-- ============================================================

select
    id_from as call_out_id,
    id_to as supplier_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2379