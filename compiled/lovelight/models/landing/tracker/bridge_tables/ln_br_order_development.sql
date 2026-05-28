-- ============================================================
-- Model: ln_br_order_development
-- Description: Landing-layer bridge view for landing_tracker.field_2611
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__development
-- Bridge owner: Orders | target: Developments
-- Field: field_2611 | label: Development Connection
-- ============================================================

select
    id_from as order_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2611