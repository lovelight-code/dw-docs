

with all_ownership as (

    -- Priority 1: Custom Tracker jobs with a direct salesperson assignment
    select
        j.job_name                  as job,
        j.myob_project_id           as myob_project_id,
        s.email                     as owner_email,
        s.full_name                 as owner_name,
        'tracker_custom_job'        as ownership_source,
        1                           as priority
    from "dw_dev"."processing_tracker"."dim_job" j
    join "dw_dev"."processing_tracker"."br_job_salespeople" bjs on bjs.job_id = j.job_id
    join "dw_dev"."processing_tracker"."dim_salespeople" s     on s.salespeople_id = bjs.salespeople_id
    where j.is_current
      and j.business_unit = 'Custom'
      and j.myob_project_id is not null
      and s.email is not null

    union all

    -- Priority 2: Tracker jobs linked to a Project where the Project has a salesperson
    select
        j.job_name                  as job,
        j.myob_project_id           as myob_project_id,
        s.email                     as owner_email,
        s.full_name                 as owner_name,
        'tracker_job_via_project'   as ownership_source,
        2                           as priority
    from "dw_dev"."processing_tracker"."dim_job" j
    join "dw_dev"."processing_tracker"."br_job_project" bjp    on bjp.job_id = j.job_id
    join "dw_dev"."processing_tracker"."dim_project" p         on p.project_id = bjp.project_id
    join "dw_dev"."processing_tracker"."br_project_salespeople" bps on bps.project_id = p.project_id
    join "dw_dev"."processing_tracker"."dim_salespeople" s     on s.salespeople_id = bps.salespeople_id
    where j.is_current
      and p.is_current
      and j.myob_project_id is not null
      and s.email is not null

    union all

    -- Priority 3: Tracker Projects with a MYOB project reference and a salesperson at project level
    select
        p.project_name_with_id      as job,
        p.myob_project_reference    as myob_project_id,
        s.email                     as owner_email,
        s.full_name                 as owner_name,
        'tracker_project'           as ownership_source,
        3                           as priority
    from "dw_dev"."processing_tracker"."dim_project" p
    join "dw_dev"."processing_tracker"."br_project_salespeople" bps on bps.project_id = p.project_id
    join "dw_dev"."processing_tracker"."dim_salespeople" s     on s.salespeople_id = bps.salespeople_id
    where p.is_current
      and p.myob_project_reference is not null
      and s.email is not null

    union all

    -- Priority 4: Projects/Apartments jobs with a salesperson but no parent project link
    select
        j.job_name                  as job,
        j.myob_project_id           as myob_project_id,
        s.email                     as owner_email,
        s.full_name                 as owner_name,
        'tracker_standalone_job'    as ownership_source,
        4                           as priority
    from "dw_dev"."processing_tracker"."dim_job" j
    join "dw_dev"."processing_tracker"."br_job_salespeople" bjs on bjs.job_id = j.job_id
    join "dw_dev"."processing_tracker"."dim_salespeople" s     on s.salespeople_id = bjs.salespeople_id
    where j.is_current
      and j.business_unit in ('Projects', 'Apartments')
      and j.myob_project_id is not null
      and j.project_as_text is null
      and s.email is not null

    union all

    -- Priority 5: Portal jobs (temporary direct source — Portal not yet onboarded to pipeline)
    select
        (vj.myob_project_id || '-' || vj.number::varchar) as job,
        vj.myob_project_id          as myob_project_id,
        u.email                     as owner_email,
        null::varchar               as owner_name,
        'portal_job'                as ownership_source,
        5                           as priority
    from portal.v_jobs vj
    left join portal.users u on u.id = vj.owner_id
    where u.email is not null
      and vj.myob_project_id is not null

),

ranked as (
    select *,
        row_number() over (partition by myob_project_id order by priority) as rn
    from all_ownership
)

select
    myob_project_id,
    job,
    owner_email,
    owner_name,
    ownership_source
from ranked
where rn = 1