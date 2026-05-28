-- ============================================================
-- Model: ln_br_development_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_1282
-- Auto-generated from canonical metadata
-- Canonical: bridge__development__salespeople
-- Bridge owner: Developments | target: Salespeople
-- Field: field_1282 | label: Salesperson
-- ============================================================

select
    id_from as development_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1282