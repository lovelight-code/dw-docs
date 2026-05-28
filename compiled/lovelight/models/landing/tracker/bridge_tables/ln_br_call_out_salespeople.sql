-- ============================================================
-- Model: ln_br_call_out_salespeople
-- Description: Landing-layer bridge view for landing_tracker.field_985
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__salespeople
-- Bridge owner: Call Outs | target: Salespeople
-- Field: field_985 | label: Salesperson
-- ============================================================

select
    id_from as call_out_id,
    id_to as salespeople_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_985