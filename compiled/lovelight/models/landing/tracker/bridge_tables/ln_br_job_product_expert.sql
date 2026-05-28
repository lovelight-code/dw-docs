-- ============================================================
-- Model: ln_br_job_product_expert
-- Description: Landing-layer bridge view for landing_tracker.field_2115
-- Auto-generated from canonical metadata
-- Canonical: bridge__job__product_expert
-- Bridge owner: Jobs | target: Product Experts
-- Field: field_2115 | label: Project Manager
-- ============================================================

select
    id_from as job_id,
    id_to as product_expert_id,
    _dlt_load_id,
    _dlt_id
from landing_tracker.field_2115