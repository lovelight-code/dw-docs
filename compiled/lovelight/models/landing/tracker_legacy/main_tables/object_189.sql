with
o189 as (select * from landing_tracker.object_189),
o189f2718 as (select _dlt_parent_id, max(value) as field_2718 from landing_tracker.object_189__field_2718 group by 1),
o189f2720 as (select _dlt_parent_id, max(value) as field_2720 from landing_tracker.object_189__field_2720 group by 1)

select
    o189.id as _id,
    o189.created,
    o189.updated,
    o189.field_2716,
    o189.field_2717_date as field_2717,
    o189.field_2717_all_day as field_2717__all_day,
    o189.field_2726,
    o189.field_2714_date as field_2714,
    o189.field_2714_all_day as field_2714__all_day,
    o189.field_2725_date as field_2725,
    o189.field_2725_all_day as field_2725__all_day,
    o189.field_2728,
    o189.field_2721,
    o189.field_2722,
    o189.field_2715,
    o189.field_2723,
    o189.field_2724,
    o189.created_at,
    o189.updated_at,
    o189._dlt_load_id,
    o189._dlt_id,
    o189f2718.field_2718,
    o189f2720.field_2720,
    false as deleted
from o189
left join o189f2718 on o189._dlt_id = o189f2718._dlt_parent_id
left join o189f2720 on o189._dlt_id = o189f2720._dlt_parent_id