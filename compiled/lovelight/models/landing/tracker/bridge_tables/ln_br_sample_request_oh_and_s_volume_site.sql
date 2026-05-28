-- ============================================================
-- Model: ln_br_sample_request_oh_and_s_volume_site
-- Description: Landing-layer bridge view for landing_tracker.field_2467
-- Auto-generated from canonical metadata
-- Canonical: bridge__sample_request__oh_and_s_volume_site
-- Bridge owner: Sample Requests | target: [OH&S] Volume Sites
-- Field: field_2467 | label: Volume Job Name
-- ============================================================

select
    id_from as sample_request_id,
    id_to as oh_s_volume_site_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2467