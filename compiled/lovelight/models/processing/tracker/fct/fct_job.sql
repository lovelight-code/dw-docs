

-- ============================================================
-- Model: fct_job
-- Description: Fact table for job-level measures and metrics.
-- Source: ln_job (landing layer)
-- ============================================================

with base as (
    select *
    from "dw_dev"."landing_tracker"."ln_job"
),

final as (
    select
        j.job_sk,
        p.project_sk,
        s.job_status_sk,
        a.account_sk,
        c.contact_sk,
        i.installer_sk,
        b.value_ex_gst,
        b.designer_commissions_amt as designer_commission_amt,
        b.created_date as created_dt,
        b.completed_date as completed_dt,
        current_timestamp as proc_created_at,
        'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id,
        current_timestamp as load_run_at
    from base b
    left join "dw_dev"."processing_tracker"."dim_job" j
        on b.id = j.job_id
    left join "dw_dev"."processing_tracker"."br_job_project" bp
        on b.id = bp.job_id
    left join "dw_dev"."processing_tracker"."dim_project" p
        on bp.project_id = p.project_id
    left join "dw_dev"."processing_tracker"."br_job_job_status" bs
        on b.id = bs.job_id
    left join "dw_dev"."processing_tracker"."dim_job_status" s
        on bs.job_status_id = s.job_status_id
    left join "dw_dev"."processing_tracker"."br_job_account" ba
        on b.id = ba.job_id
    left join "dw_dev"."processing_tracker"."dim_account" a
        on ba.account_id = a.account_id
    left join "dw_dev"."processing_tracker"."br_job_client_contact" bc
        on b.id = bc.job_id
    left join "dw_dev"."processing_tracker"."dim_contact" c
        on bc.contact_id = c.contact_id
    left join "dw_dev"."processing_tracker"."br_job_installed_by" bi
        on b.id = bi.job_id
    left join "dw_dev"."processing_tracker"."dim_installer" i
        on bi.installer_id = i.installer_id
)

select *
from final
where final.job_sk is not null