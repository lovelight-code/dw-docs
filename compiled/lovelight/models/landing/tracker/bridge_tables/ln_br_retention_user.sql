-- ============================================================
-- Model: ln_br_retention_user
-- Description: Landing-layer bridge view for landing_tracker.field_3083
-- Auto-generated from canonical metadata
-- Canonical: bridge__retention__user
-- Bridge owner: Retention | target: Users
-- Field: field_3083 | label: Created By
-- ============================================================

select
    id_from as retention_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_3083