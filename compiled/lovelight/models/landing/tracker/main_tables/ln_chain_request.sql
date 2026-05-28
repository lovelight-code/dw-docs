-- ============================================================
-- Model: ln_chain_request
-- Description: Landing-layer view that flattens object_139
--              and its subtables into one record per chain_request.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_139 table
-- ------------------------------------------------------------
o139 as (
    select *
    from landing_tracker.object_139
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_139__field_2004
-- ------------------------------------------------------------
o139f2004 as (
    select
        _dlt_parent_id,
        max(value) as type
    from landing_tracker.object_139__field_2004
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_139__field_2005
-- ------------------------------------------------------------
o139f2005 as (
    select
        _dlt_parent_id,
        max(value) as length
    from landing_tracker.object_139__field_2005
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_139__field_2008
-- ------------------------------------------------------------
o139f2008 as (
    select
        _dlt_parent_id,
        max(value) as status
    from landing_tracker.object_139__field_2008
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_139__field_2019
-- ------------------------------------------------------------
o139f2019 as (
    select
        _dlt_parent_id,
        max(value) as manufacturer
    from landing_tracker.object_139__field_2019
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_139__field_2020
-- ------------------------------------------------------------
o139f2020 as (
    select
        _dlt_parent_id,
        max(value) as chain_mechanism_colour
    from landing_tracker.object_139__field_2020
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_139__field_2179
-- ------------------------------------------------------------
o139f2179 as (
    select
        _dlt_parent_id,
        max(value) as control_side
    from landing_tracker.object_139__field_2179
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_139__field_2180
-- ------------------------------------------------------------
o139f2180 as (
    select
        _dlt_parent_id,
        max(value) as tube_size
    from landing_tracker.object_139__field_2180
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o139.id,
    o139.created as src_created_at,
    o139.updated as src_updated_at,
    o139.field_2006 as src_sys_id,
    o139.field_2009_all_day as date_lodged_all_day,
    o139.field_2009_date as date_lodged_date,
    o139.field_2010_all_day as date_sent_all_day,
    o139.field_2010_date as date_sent_date,
    o139.field_2012_city as customer_address_city,
    o139.field_2012_full as customer_address_full,
    o139.field_2012_state as customer_address_state,
    o139.field_2012_street as customer_address_street,
    o139.field_2012_street2 as customer_address_street2,
    o139.field_2012_zip as customer_address_zip,
    o139.field_2017 as quantity,
    o139.field_2046 as volume_job_name,
    o139.field_2174 as spring_assist_chain_drive,
    o139.field_2194 as deleted,
    o139.field_2233 as job_name,
    o139.field_2396 as tracking_number,
    o139.field_2556 as width_mm,
    o139.field_2557 as drop_mm,
    o139.field_3075 as note,
    o139f2004.type as type,
    o139f2005.length as length,
    o139f2008.status as status,
    o139f2019.manufacturer as manufacturer,
    o139f2020.chain_mechanism_colour as chain_mechanism_colour,
    o139f2179.control_side as control_side,
    o139f2180.tube_size as tube_size,
    o139._dlt_id as dlt_id,
    o139._dlt_load_id as dlt_load_id,
    o139.created_at as created_at,
    o139.updated_at as updated_at
from o139
left join o139f2004 on o139._dlt_id = o139f2004._dlt_parent_id
left join o139f2005 on o139._dlt_id = o139f2005._dlt_parent_id
left join o139f2008 on o139._dlt_id = o139f2008._dlt_parent_id
left join o139f2019 on o139._dlt_id = o139f2019._dlt_parent_id
left join o139f2020 on o139._dlt_id = o139f2020._dlt_parent_id
left join o139f2179 on o139._dlt_id = o139f2179._dlt_parent_id
left join o139f2180 on o139._dlt_id = o139f2180._dlt_parent_id