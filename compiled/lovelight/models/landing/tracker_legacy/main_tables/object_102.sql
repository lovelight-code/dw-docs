with
o102 as (select * from landing_tracker.object_102),
o102f1450 as (select _dlt_parent_id, max(value) as field_1450 from landing_tracker.object_102__field_1450 group by 1),
o102f1451 as (select _dlt_parent_id, max(value) as field_1451 from landing_tracker.object_102__field_1451 group by 1)

select
    o102.id as _id,
    o102.created,
    o102.updated,
    o102.user_id,
    o102.approval_status,
    o102.account_status,
    o102.field_1447_first as field_1447__first,
    o102.field_1447_last as field_1447__last,
    o102.field_1447_full as field_1447__full,
    o102.field_1448_email as field_1448__email,
    o102.field_1449,
    o102.field_1471,
    o102.field_1473_date as field_1473,
    o102.field_1473_all_day as field_1473__all_day,
    o102.created_at,
    o102.updated_at,
    o102._dlt_load_id,
    o102._dlt_id,
    o102.field_1539_number as field_1539__number,
    o102.field_1539_full as field_1539__full,
    o102.field_1540_number as field_1540__number,
    o102.field_1540_full as field_1540__full,
    o102.field_2021,
    o102.utility_key,
    o102.field_1448_label as field_1448__label,
    o102f1450.field_1450,
    o102f1451.field_1451,
    false as deleted
from o102
left join o102f1450 on o102._dlt_id = o102f1450._dlt_parent_id
left join o102f1451 on o102._dlt_id = o102f1451._dlt_parent_id