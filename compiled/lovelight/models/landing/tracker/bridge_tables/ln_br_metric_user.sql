-- ============================================================
-- Model: ln_br_metric_user
-- Description: Landing-layer bridge view for landing_tracker.field_2203
-- Auto-generated from canonical metadata
-- Canonical: bridge__metric__user
-- Bridge owner: Metrics | target: Users
-- Field: field_2203 | label: User
-- ============================================================

select
    id_from as metric_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2203