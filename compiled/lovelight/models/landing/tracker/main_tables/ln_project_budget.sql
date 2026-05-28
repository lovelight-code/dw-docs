-- ============================================================
-- Model: ln_project_budget
-- Description: Landing-layer view that flattens object_198
--              and its subtables into one record per project_budget.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_198 table
-- ------------------------------------------------------------
o198 as (
    select *
    from landing_tracker.object_198
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_198__field_2877
-- ------------------------------------------------------------
o198f2877 as (
    select
        _dlt_parent_id,
        max(value) as invoice_currency
    from landing_tracker.object_198__field_2877
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_198__field_2892
-- ------------------------------------------------------------
o198f2892 as (
    select
        _dlt_parent_id,
        max(value) as unit
    from landing_tracker.object_198__field_2892
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_198__field_2922
-- ------------------------------------------------------------
o198f2922 as (
    select
        _dlt_parent_id,
        max(value) as freight
    from landing_tracker.object_198__field_2922
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o198.id,
    o198.created as src_created_at,
    o198.updated as src_updated_at,
    o198.field_2871 as product_detail,
    o198.field_2872 as supporting_doc,
    o198.field_2873 as final_estimated_cost_aud,
    o198.field_2874 as quantity,
    o198.field_2876 as discount_applied,
    o198.field_2878 as exchange_rate,
    o198.field_2879 as fx_amount_required,
    o198.field_2880 as fx_amount_display,
    o198.field_2881 as quoted_leadtime,
    o198.field_2900 as is_install_required,
    o198.field_2910 as auto_increment,
    o198.field_2911_all_day as created_date_all_day,
    o198.field_2911_date as created_date,
    o198.field_3146 as project_complete_date,
    o198f2877.invoice_currency as invoice_currency,
    o198f2892.unit as unit,
    o198f2922.freight as freight,
    o198._dlt_id as dlt_id,
    o198._dlt_load_id as dlt_load_id,
    o198.created_at as created_at,
    o198.updated_at as updated_at
from o198
left join o198f2877 on o198._dlt_id = o198f2877._dlt_parent_id
left join o198f2892 on o198._dlt_id = o198f2892._dlt_parent_id
left join o198f2922 on o198._dlt_id = o198f2922._dlt_parent_id