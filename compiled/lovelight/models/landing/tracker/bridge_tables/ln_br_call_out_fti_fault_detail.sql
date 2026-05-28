-- ============================================================
-- Model: ln_br_call_out_fti_fault_detail
-- Description: Landing-layer bridge view for landing_tracker.field_2302
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__fti_fault_detail
-- Bridge owner: Call Outs | target: FTI Fault Details
-- Field: field_2302 | label: FTI Fault Detail
-- ============================================================

select
    id_from as call_out_id,
    id_to as fti_fault_detail_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2302