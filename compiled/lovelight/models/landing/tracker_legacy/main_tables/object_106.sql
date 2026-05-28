with
o106 as (select * from landing_tracker.object_106),
o106f1524 as (select _dlt_parent_id, max(value) as field_1524 from landing_tracker.object_106__field_1524 group by 1),
o106f1525 as (select _dlt_parent_id, max(value) as field_1525 from landing_tracker.object_106__field_1525 group by 1)

select
    o106.id as _id,
    o106.created,
    o106.updated,
    o106.user_id,
    o106.utility_key,
    o106.approval_status,
    o106.account_status,
    o106.field_1521_first as field_1521__first,
    o106.field_1521_last as field_1521__last,
    o106.field_1521_full as field_1521__full,
    o106.field_1522_email as field_1522__email,
    o106.field_1523,
    o106.created_at,
    o106.updated_at,
    o106._dlt_load_id,
    o106._dlt_id,
    o106.field_1522_label as field_1522__label,
    o106f1524.field_1524,
    o106f1525.field_1525,
    false as deleted
from o106
left join o106f1524 on o106._dlt_id = o106f1524._dlt_parent_id
left join o106f1525 on o106._dlt_id = o106f1525._dlt_parent_id