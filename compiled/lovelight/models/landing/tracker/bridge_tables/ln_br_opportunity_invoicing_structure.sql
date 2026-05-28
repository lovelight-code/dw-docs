-- ============================================================
-- Model: ln_br_opportunity_invoicing_structure
-- Description: Landing-layer bridge view for landing_tracker.field_1858
-- Auto-generated from canonical metadata
-- Canonical: bridge__opportunity__invoicing_structure
-- Bridge owner: Opportunities | target: Invoicing Structures
-- Field: field_1858 | label: Invoicing Structure
-- ============================================================

select
    id_from as opportunity_id,
    id_to as invoicing_structure_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1858