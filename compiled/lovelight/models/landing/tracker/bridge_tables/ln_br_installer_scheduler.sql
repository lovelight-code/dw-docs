-- ============================================================
-- Model: ln_br_installer_scheduler
-- Description: Landing-layer bridge view for landing_tracker.field_1498
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer__scheduler
-- Bridge owner: Installers | target: Schedulers
-- Field: field_1498 | label: Schedulers
-- ============================================================

select
    id_from as installer_id,
    id_to as scheduler_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1498