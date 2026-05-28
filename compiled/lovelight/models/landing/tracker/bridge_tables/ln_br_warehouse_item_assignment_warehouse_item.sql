-- ============================================================
-- Model: ln_br_warehouse_item_assignment_warehouse_item
-- Description: Landing-layer bridge view for landing_tracker.field_1040
-- Auto-generated from canonical metadata
-- Canonical: bridge__warehouse_item_assignment__warehouse_item
-- Bridge owner: Warehouse Item Assignments | target: Warehouse Items
-- Field: field_1040 | label: Warehouse Item
-- ============================================================

select
    id_from as warehouse_item_assignment_id,
    id_to as warehouse_item_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1040