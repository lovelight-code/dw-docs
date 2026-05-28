-- ============================================================
-- Model: ln_br_issue_order
-- Description: Landing-layer bridge view for landing_tracker.field_1908
-- Auto-generated from canonical metadata
-- Canonical: bridge__issue__order
-- Bridge owner: Issues | target: Orders
-- Field: field_1908 | label: Order
-- ============================================================

select
    id_from as issue_id,
    id_to as order_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1908