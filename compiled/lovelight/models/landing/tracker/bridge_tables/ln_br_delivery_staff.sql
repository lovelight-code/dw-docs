-- ============================================================
-- Model: ln_br_delivery_staff
-- Description: Landing-layer bridge view for landing_tracker.field_3151
-- Auto-generated from canonical metadata
-- Canonical: bridge__delivery__staff
-- Bridge owner: Deliveries | target: Staff
-- Field: field_3151 | label: Requested By
-- ============================================================

select
    id_from as delivery_id,
    id_to as staff_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3151