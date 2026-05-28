-- ============================================================
-- Model: ln_br_panda_doc_opportunity
-- Description: Landing-layer bridge view for landing_tracker.field_1674
-- Auto-generated from canonical metadata
-- Canonical: bridge__panda_doc__opportunity
-- Bridge owner: PandaDocs | target: Opportunities
-- Field: field_1674 | label: Opportunity
-- ============================================================

select
    id_from as panda_doc_id,
    id_to as opportunity_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_1674