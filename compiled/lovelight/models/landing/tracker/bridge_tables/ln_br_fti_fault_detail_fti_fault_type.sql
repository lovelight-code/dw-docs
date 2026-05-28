-- ============================================================
-- Model: ln_br_fti_fault_detail_fti_fault_type
-- Description: Landing-layer bridge view for landing_tracker.field_2126
-- Auto-generated from canonical metadata
-- Canonical: bridge__fti_fault_detail__fti_fault_type
-- Bridge owner: FTI Fault Details | target: FTI Fault Types
-- Field: field_2126 | label: Remake Fault Type
-- ============================================================

select
    id_from as fti_fault_detail_id,
    id_to as fti_fault_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2126