with
o168 as (select * from landing_tracker.object_168),
o168f2425 as (select _dlt_parent_id, max(value) as field_2425 from landing_tracker.object_168__field_2425 group by 1)

select
    o168.id as _id,
    o168.created,
    o168.updated,
    o168.field_2422,
    o168.field_2421,
    o168.field_2424_date as field_2424,
    o168.field_2424_to as field_2424__to,
    o168.field_2424_all_day as field_2424__all_day,
    o168.field_2426,
    o168.field_2435,
    o168.field_2438,
    o168.created_at,
    o168.updated_at,
    o168._dlt_load_id,
    o168._dlt_id,
    o168.field_2437,
    o168f2425.field_2425,
    false as deleted
from o168
left join o168f2425 on o168._dlt_id = o168f2425._dlt_parent_id