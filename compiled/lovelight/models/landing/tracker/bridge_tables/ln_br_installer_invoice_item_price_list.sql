-- ============================================================
-- Model: ln_br_installer_invoice_item_price_list
-- Description: Landing-layer bridge view for landing_tracker.field_2678
-- Auto-generated from canonical metadata
-- Canonical: bridge__installer_invoice_item__price_list
-- Bridge owner: Installer Invoice Item | target: Price List
-- Field: field_2678 | label: Chargeable Item
-- ============================================================

select
    id_from as installer_invoice_item_id,
    id_to as price_list_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2678