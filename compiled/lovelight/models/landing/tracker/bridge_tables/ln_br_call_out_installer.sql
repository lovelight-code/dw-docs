-- ============================================================
-- Model: ln_br_call_out_installer
-- Description: Landing-layer bridge view for landing_tracker.field_2378
-- Auto-generated from canonical metadata
-- Canonical: bridge__call_out__installer
-- Bridge owner: Call Outs | target: Installers
-- Field: field_2378 | label: Installer(s) at Fault
-- ============================================================

select
    id_from as call_out_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2378