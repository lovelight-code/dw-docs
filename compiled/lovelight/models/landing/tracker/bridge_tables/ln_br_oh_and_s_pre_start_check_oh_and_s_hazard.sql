-- ============================================================
-- Model: ln_br_oh_and_s_pre_start_check_oh_and_s_hazard
-- Description: Landing-layer bridge view for landing_tracker.field_2355
-- Auto-generated from canonical metadata
-- Canonical: bridge__oh_and_s_pre_start_check__oh_and_s_hazard
-- Bridge owner: [OH&S] Pre-Start Checks | target: [OH&S] Hazards
-- Field: field_2355 | label: [OH&S] Hazards
-- ============================================================

select
    id_from as oh_and_s_pre_start_check_id,
    id_to as oh_s_hazard_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2355