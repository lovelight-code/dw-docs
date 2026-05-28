-- ============================================================
-- Model: ln_br_call_out_development
-- Description: Landing-layer bridge view for landing_tracker.field_1482
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__development
-- Bridge owner: Call Outs | target: Developments
-- Field: field_1482 | label: Development
-- ============================================================

select
    id_from as call_out_id,
    id_to as development_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1482