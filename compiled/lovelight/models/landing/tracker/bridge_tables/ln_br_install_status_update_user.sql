-- ============================================================
-- Model: ln_br_install_status_update_user
-- Description: Landing-layer bridge view for landing_tracker.field_2744
-- Auto-generated from canonical metadata
-- Canonical: bridge__install_status_update__user
-- Bridge owner: Install Status Updates | target: Users
-- Field: field_2744 | label: Created By
-- ============================================================

select
    id_from as install_status_update_id,
    id_to as user_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2744