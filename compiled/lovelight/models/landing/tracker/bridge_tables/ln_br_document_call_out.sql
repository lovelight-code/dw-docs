-- ============================================================
-- Model: ln_br_document_call_out
-- Description: Landing-layer bridge view for landing_tracker.field_1499
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__call_out
-- Bridge owner: Documents | target: Call Outs
-- Field: field_1499 | label: Call Out
-- ============================================================

select
    id_from as document_id,
    id_to as call_out_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1499