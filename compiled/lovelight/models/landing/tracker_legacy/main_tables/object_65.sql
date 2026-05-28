with
o65 as (select * from landing_tracker.object_65),
o65f777 as (select _dlt_parent_id, max(value) as field_777 from landing_tracker.object_65__field_777 group by 1),
o65f778 as (select _dlt_parent_id, max(value) as field_778 from landing_tracker.object_65__field_778 group by 1)

select
    o65.id as _id,
    o65.created,
    o65.updated,
    o65.user_id,
    o65.utility_key,
    o65.approval_status,
    o65.account_status,
    o65.field_774_first as field_774__first,
    o65.field_774_last as field_774__last,
    o65.field_774_full as field_774__full,
    o65.field_775_email as field_775__email,
    o65.field_776,
    o65.created_at,
    o65.updated_at,
    o65._dlt_load_id,
    o65._dlt_id,
    o65.field_775_label as field_775__label,
    o65f777.field_777,
    o65f778.field_778,
    false as deleted
from o65
left join o65f777 on o65._dlt_id = o65f777._dlt_parent_id
left join o65f778 on o65._dlt_id = o65f778._dlt_parent_id