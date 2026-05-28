-- ============================================================
-- Model: ln_br_installer_invoice_item_price_list_division
-- Description: Landing-layer bridge view for landing_tracker.field_2676
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer_invoice_item__price_list_division
-- Bridge owner: Installer Invoice Item | target: Price List Division
-- Field: field_2676 | label: Division
-- ============================================================

select
    id_from as installer_invoice_item_id,
    id_to as price_list_division_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2676