-- ============================================================
-- Model: ln_br_document_order
-- Description: Landing-layer bridge view for landing_tracker.field_193
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__order
-- Bridge owner: Documents | target: Orders
-- Field: field_193 | label: Order
-- ============================================================

select
    id_from as document_id,
    id_to as order_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_193