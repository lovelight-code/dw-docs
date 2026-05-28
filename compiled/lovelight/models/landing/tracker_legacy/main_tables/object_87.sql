with
o87 as (select * from landing_tracker.object_87),
o87f1079 as (select _dlt_parent_id, max(value) as field_1079 from landing_tracker.object_87__field_1079 group by 1)

select
    o87.id as _id,
    o87.created,
    o87.updated,
    o87.field_1044,
    o87.field_1045_date as field_1045,
    o87.field_1045_all_day as field_1045__all_day,
    o87.field_1046_date as field_1046,
    o87.field_1046_all_day as field_1046__all_day,
    o87.field_1047_date as field_1047,
    o87.field_1047_all_day as field_1047__all_day,
    o87.field_1050,
    o87.field_1058,
    o87.field_1069,
    o87.field_1070,
    o87.field_1071,
    o87.field_1078,
    o87.field_1097,
    o87.created_at,
    o87.updated_at,
    o87._dlt_load_id,
    o87._dlt_id,
    o87f1079.field_1079,
    false as deleted
from o87
left join o87f1079 on o87._dlt_id = o87f1079._dlt_parent_id