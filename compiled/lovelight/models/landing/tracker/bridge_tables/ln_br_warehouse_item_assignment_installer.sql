-- ============================================================
-- Model: ln_br_warehouse_item_assignment_installer
-- Description: Landing-layer bridge view for landing_tracker.field_1041
-- Auto-generated from canonical metadata
-- Canonical: bridge__warehouse_item_assignment__installer
-- Bridge owner: Warehouse Item Assignments | target: Installers
-- Field: field_1041 | label: Commercial / Custom Installer
-- ============================================================

select
    id_from as warehouse_item_assignment_id,
    id_to as installer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1041