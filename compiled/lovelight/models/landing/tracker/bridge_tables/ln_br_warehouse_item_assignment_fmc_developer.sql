-- ============================================================
-- Model: ln_br_warehouse_item_assignment_fmc_developer
-- Description: Landing-layer bridge view for landing_tracker.field_1057
-- Auto-generated from canonical metadata
-- Canonical: bridge__warehouse_item_assignment__fmc_developer
-- Bridge owner: Warehouse Item Assignments | target: FMC Developer
-- Field: field_1057 | label: FMC Developer
-- ============================================================

select
    id_from as warehouse_item_assignment_id,
    id_to as fmc_developer_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1057