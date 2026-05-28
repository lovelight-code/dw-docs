-- ============================================================
-- Model: ln_br_order_storage_bay_dup
-- Description: Landing-layer bridge view for landing_tracker.field_90
-- Auto-generated from canonical metadata
-- Canonical: bridge__order__storage_bay_storage_bay
-- Bridge owner: Orders | target: Storage Bays
-- Field: field_90 | label: Storage Bay
-- ============================================================

select
    id_from as order_id,
    id_to as storage_bay_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_90