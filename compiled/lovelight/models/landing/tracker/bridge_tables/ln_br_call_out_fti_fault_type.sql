-- ============================================================
-- Model: ln_br_call_out_fti_fault_type
-- Description: Landing-layer bridge view for landing_tracker.field_2301
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__fti_fault_type
-- Bridge owner: Call Outs | target: FTI Fault Types
-- Field: field_2301 | label: FTI Fault Type
-- ============================================================

select
    id_from as call_out_id,
    id_to as fti_fault_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2301