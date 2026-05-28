-- ============================================================
-- Model: ln_br_order_fti_fault_type
-- Description: Landing-layer bridge view for landing_tracker.field_2122
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__fti_fault_type
-- Bridge owner: Orders | target: FTI Fault Types
-- Field: field_2122 | label: Remake Fault Type
-- ============================================================

select
    id_from as order_id,
    id_to as fti_fault_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2122