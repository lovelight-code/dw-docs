-- ============================================================
-- Model: ln_br_fti_fault_detail_fti_fault_reason
-- Description: Landing-layer bridge view for landing_tracker.field_2130
-- Auto-generated from canonical metadata
-- Canonical: bridge__fti_fault_detail__fti_fault_reason
-- Bridge owner: FTI Fault Details | target: FTI Fault Reasons
-- Field: field_2130 | label: Remake Fault Reason
-- ============================================================

select
    id_from as fti_fault_detail_id,
    id_to as fti_fault_reason_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2130