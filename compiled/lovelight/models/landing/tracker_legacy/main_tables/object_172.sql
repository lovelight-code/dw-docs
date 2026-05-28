with
o172 as (select * from landing_tracker.object_172),
o172f2482 as (select _dlt_parent_id, max(value) as field_2482 from landing_tracker.object_172__field_2482 group by 1)

select
    o172.id as _id,
    o172.created,
    o172.updated,
    o172.field_2465,
    o172.field_2481,
    o172.field_2469_street as field_2469__street,
    o172.field_2469_street2 as field_2469__street2,
    o172.field_2469_city as field_2469__city,
    o172.field_2469_state as field_2469__state,
    o172.field_2469_zip as field_2469__zip,
    o172.field_2469_full as field_2469__full,
    o172.field_2471,
    o172.field_2472_date as field_2472,
    o172.field_2472_all_day as field_2472__all_day,
    o172.field_2473_date as field_2473,
    o172.field_2473_all_day as field_2473__all_day,
    o172.field_2476,
    o172.field_2478,
    o172.field_2483,
    o172.created_at,
    o172.updated_at,
    o172._dlt_load_id,
    o172._dlt_id,
    o172.field_2477,
    o172f2482.field_2482,
    false as deleted
from o172
left join o172f2482 on o172._dlt_id = o172f2482._dlt_parent_id