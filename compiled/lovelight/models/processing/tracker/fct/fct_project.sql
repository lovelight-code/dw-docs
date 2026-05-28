

-- ============================================================
-- Model: fct_project
-- Description: Fact table for project-level measures and metrics.
-- Source: ln_project (landing layer)
-- ============================================================

with base as (
    select *
    from "dw_dev"."landing_tracker"."ln_project"
),

final as (
    select
        p.project_sk,
        b.date_first_marked_compete_date as date_first_marked_compete,
        current_timestamp as proc_created_at,
        'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id,
        current_timestamp as load_run_at
    from base b
    left join "dw_dev"."processing_tracker"."dim_project" p
        on b.id = p.project_id
)

select *
from final
where final.project_sk is not null