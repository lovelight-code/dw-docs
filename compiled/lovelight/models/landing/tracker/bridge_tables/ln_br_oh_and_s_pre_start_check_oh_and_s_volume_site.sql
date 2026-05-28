-- ============================================================
-- Model: ln_br_oh_and_s_pre_start_check_oh_and_s_volume_site
-- Description: Landing-layer bridge view for landing_tracker.field_2366
-- Auto-generated from canonical metadata
-- Canonical: bridge__oh_and_s_pre_start_check__oh_and_s_volume_site
-- Bridge owner: [OH&S] Pre-Start Checks | target: [OH&S] Volume Sites
-- Field: field_2366 | label: Volume Job Name
-- ============================================================

select
    id_from as oh_and_s_pre_start_check_id,
    id_to as oh_s_volume_site_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2366