-- ============================================================
-- Model: ln_br_order_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_1281
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__salespeople
-- Bridge owner: Orders | target: Salespeople
-- Field: field_1281 | label: Job Salesperson
-- ============================================================

select
    id_from as order_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1281