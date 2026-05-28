-- ============================================================
-- Model: ln_br_lead_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_962
-- Auto-generated from canonical metadata
-- Canonical: bridge__lead__salespeople
-- Bridge owner: Leads | target: Salespeople
-- Field: field_962 | label: Salesperson
-- ============================================================

select
    id_from as lead_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_962