-- ============================================================
-- Model: ln_br_order_fti_fault_detail
-- Description: Landing-layer bridge view for landing_tracker.field_2131
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__fti_fault_detail
-- Bridge owner: Orders | target: FTI Fault Details
-- Field: field_2131 | label: Remake Fault Detail
-- ============================================================

select
    id_from as order_id,
    id_to as fti_fault_detail_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2131