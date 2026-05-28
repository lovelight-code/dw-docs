-- ============================================================
-- Model: ln_br_activity_activity_type
-- Description: Landing-layer bridge view for landing_tracker.field_1685
-- Auto-generated from canonical metadata
-- Canonical: bridge__activity__activity_type
-- Bridge owner: Activities | target: Activity Types
-- Field: field_1685 | label: Activity Type
-- ============================================================

select
    id_from as activity_id,
    id_to as activity_type_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1685