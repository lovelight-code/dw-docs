with
o180 as (select * from landing_tracker.object_180),
o180f2710 as (select _dlt_parent_id, max(value) as field_2710 from landing_tracker.object_180__field_2710 group by 1),
o180f2837 as (select _dlt_parent_id, max(value) as field_2837 from landing_tracker.object_180__field_2837 group by 1)

select
    o180.id as _id,
    o180.created,
    o180.updated,
    o180.field_2621,
    o180.field_2600,
    o180.field_2604,
    o180.field_2605,
    o180.field_2817,
    o180.created_at,
    o180.updated_at,
    o180._dlt_load_id,
    o180._dlt_id,
    o180.field_2738,
    o180.field_2838_date as field_2838,
    o180.field_2838_all_day as field_2838__all_day,
    o180.field_2843_date as field_2843,
    o180.field_2843_all_day as field_2843__all_day,
    o180.field_2828,
    o180f2710.field_2710,
    o180f2837.field_2837,
    false as deleted
from o180
left join o180f2710 on o180._dlt_id = o180f2710._dlt_parent_id
left join o180f2837 on o180._dlt_id = o180f2837._dlt_parent_id