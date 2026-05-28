-- ============================================================
-- Model: ln_br_document_pm_call_out
-- Description: Landing-layer bridge view for landing_tracker.field_2191
-- Auto-generated from canonical metadata
-- Canonical: bridge__document__pm_call_out
-- Bridge owner: Documents | target: PM Call Out
-- Field: field_2191 | label: PM Call Out
-- ============================================================

select
    id_from as document_id,
    id_to as pm_call_out_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2191