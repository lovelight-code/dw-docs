-- ============================================================
-- Model: ln_br_price_list_item_price_list_price_method
-- Description: Landing-layer bridge view for landing_tracker.field_2658
-- Auto-generated from canonical metadata
-- Canonical: bridge__price_list_item__price_list_price_method
-- Bridge owner: Price List Items | target: Price List Price Methods
-- Field: field_2658 | label: Pricing Method
-- ============================================================

select
    id_from as price_list_item_id,
    id_to as price_list_price_method_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2658