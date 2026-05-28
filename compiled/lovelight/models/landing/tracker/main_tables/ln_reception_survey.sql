-- ============================================================
-- Model: ln_reception_survey
-- Description: Landing-layer view that flattens object_155
--              and its subtables into one record per reception_survey.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_155 table
-- ------------------------------------------------------------
o155 as (
    select *
    from landing_tracker.object_155
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_155__field_2242
-- ------------------------------------------------------------
o155f2242 as (
    select
        _dlt_parent_id,
        max(value) as call_reason
    from landing_tracker.object_155__field_2242
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_155__field_2297
-- ------------------------------------------------------------
o155f2297 as (
    select
        _dlt_parent_id,
        max(value) as job_detail
    from landing_tracker.object_155__field_2297
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_155__field_2440
-- ------------------------------------------------------------
o155f2440 as (
    select
        _dlt_parent_id,
        max(value) as number_selected
    from landing_tracker.object_155__field_2440
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o155.id,
    o155.created as src_created_at,
    o155.updated as src_updated_at,
    o155.field_2243 as other_detail,
    o155.field_2244 as checked_website_for_service_call,
    o155.field_2245 as survey_id,
    o155f2242.call_reason as call_reason,
    o155f2297.job_detail as job_detail,
    o155f2440.number_selected as number_selected,
    o155._dlt_id as dlt_id,
    o155._dlt_load_id as dlt_load_id,
    o155.created_at as created_at,
    o155.updated_at as updated_at
from o155
left join o155f2242 on o155._dlt_id = o155f2242._dlt_parent_id
left join o155f2297 on o155._dlt_id = o155f2297._dlt_parent_id
left join o155f2440 on o155._dlt_id = o155f2440._dlt_parent_id