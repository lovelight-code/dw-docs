-- ============================================================
-- Model: ln_br_image_call_out
-- Description: Landing-layer bridge view for landing_tracker.field_1543
-- Auto-generated from canonical metadata
-- Canonical: bridge__image__call_out
-- Bridge owner: Images | target: Call Outs
-- Field: field_1543 | label: Call Out
-- ============================================================

select
    id_from as image_id,
    id_to as call_out_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1543