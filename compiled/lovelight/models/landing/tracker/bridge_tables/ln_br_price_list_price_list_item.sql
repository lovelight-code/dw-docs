-- ============================================================
-- Model: ln_br_price_list_price_list_item
-- Description: Landing-layer bridge view for landing_tracker.field_2664
-- Auto-generated from canonical metadata
-- Canonical: bridge__price_list__price_list_item
-- Bridge owner: Price List | target: Price List Items
-- Field: field_2664 | label: Price List Item
-- ============================================================

select
    id_from as price_list_id,
    id_to as price_list_item_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2664