with
o56 as (select * from landing_tracker.object_56),
o56f628 as (select _dlt_parent_id, max(value) as field_628 from landing_tracker.object_56__field_628 group by 1),
o56f629 as (select _dlt_parent_id, max(value) as field_629 from landing_tracker.object_56__field_629 group by 1),
o56f634 as (select _dlt_parent_id, max(value) as field_634 from landing_tracker.object_56__field_634 group by 1)

select
    o56.id as _id,
    o56.created,
    o56.updated,
    o56.user_id,
    o56.utility_key,
    o56.approval_status,
    o56.account_status,
    o56.field_625_first as field_625__first,
    o56.field_625_full as field_625__full,
    o56.field_626_email as field_626__email,
    o56.field_627,
    o56.created_at,
    o56.updated_at,
    o56._dlt_load_id,
    o56._dlt_id,
    o56.field_625_last as field_625__last,
    o56.field_633_area as field_633__area,
    o56.field_633_number as field_633__number,
    o56.field_633_full as field_633__full,
    o56f628.field_628,
    o56f629.field_629,
    o56f634.field_634,
    false as deleted
from o56
left join o56f628 on o56._dlt_id = o56f628._dlt_parent_id
left join o56f629 on o56._dlt_id = o56f629._dlt_parent_id
left join o56f634 on o56._dlt_id = o56f634._dlt_parent_id