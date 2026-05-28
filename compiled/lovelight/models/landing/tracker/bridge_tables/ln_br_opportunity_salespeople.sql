-- ============================================================
-- Model: ln_br_opportunity_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_1274
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__salespeople
-- Bridge owner: Opportunities | target: Salespeople
-- Field: field_1274 | label: Salesperson
-- ============================================================

select
    id_from as opportunity_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1274