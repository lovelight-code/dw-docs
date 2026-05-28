with
o178 as (select * from landing_tracker.object_178),
o178f2564 as (select _dlt_parent_id, max(value) as field_2564 from landing_tracker.object_178__field_2564 group by 1),
o178f2567 as (select _dlt_parent_id, max(value) as field_2567 from landing_tracker.object_178__field_2567 group by 1),
o178f2570 as (select _dlt_parent_id, max(value) as field_2570 from landing_tracker.object_178__field_2570 group by 1),
o178f2571 as (select _dlt_parent_id, max(value) as field_2571 from landing_tracker.object_178__field_2571 group by 1),
o178f2572 as (select _dlt_parent_id, max(value) as field_2572 from landing_tracker.object_178__field_2572 group by 1),
o178f2584 as (select _dlt_parent_id, max(value) as field_2584 from landing_tracker.object_178__field_2584 group by 1)

select
    o178.id as _id,
    o178.created,
    o178.updated,
    o178.field_2568_date as field_2568,
    o178.field_2568_all_day as field_2568__all_day,
    o178.field_2569,
    o178.field_2573,
    o178.created_at,
    o178.updated_at,
    o178._dlt_load_id,
    o178._dlt_id,
    o178f2564.field_2564,
    o178f2567.field_2567,
    o178f2570.field_2570,
    o178f2571.field_2571,
    o178f2572.field_2572,
    o178f2584.field_2584,
    false as deleted
from o178
left join o178f2564 on o178._dlt_id = o178f2564._dlt_parent_id
left join o178f2567 on o178._dlt_id = o178f2567._dlt_parent_id
left join o178f2570 on o178._dlt_id = o178f2570._dlt_parent_id
left join o178f2571 on o178._dlt_id = o178f2571._dlt_parent_id
left join o178f2572 on o178._dlt_id = o178f2572._dlt_parent_id
left join o178f2584 on o178._dlt_id = o178f2584._dlt_parent_id