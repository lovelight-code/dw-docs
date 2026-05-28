-- ============================================================
-- Model: ln_br_order_staff
-- Description: Landing-layer bridge view for landing_tracker.field_829
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__staff
-- Bridge owner: Orders | target: Staff
-- Field: field_829 | label: Reviewer
-- ============================================================

select
    id_from as order_id,
    id_to as staff_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_829