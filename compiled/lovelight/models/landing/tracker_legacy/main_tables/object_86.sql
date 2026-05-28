with
o86 as (select * from landing_tracker.object_86),
o86f1056 as (select _dlt_parent_id, max(value) as field_1056 from landing_tracker.object_86__field_1056 group by 1),
o86f1099 as (select _dlt_parent_id, max(value) as field_1099 from landing_tracker.object_86__field_1099 group by 1)

select
    o86.id as _id,
    o86.created,
    o86.updated,
    o86.field_1038,
    o86.field_1052,
    o86.field_1053_date as field_1053,
    o86.field_1053_all_day as field_1053__all_day,
    o86.field_1054_date as field_1054,
    o86.field_1054_all_day as field_1054__all_day,
    o86.field_1055,
    o86.field_1096,
    o86.field_1100,
    o86.created_at,
    o86.updated_at,
    o86._dlt_load_id,
    o86._dlt_id,
    o86f1056.field_1056,
    o86f1099.field_1099,
    false as deleted
from o86
left join o86f1056 on o86._dlt_id = o86f1056._dlt_parent_id
left join o86f1099 on o86._dlt_id = o86f1099._dlt_parent_id