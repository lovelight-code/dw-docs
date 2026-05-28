with
o161 as (select * from landing_tracker.object_161),
o161f2291 as (select _dlt_parent_id, max(value) as field_2291 from landing_tracker.object_161__field_2291 group by 1),
o161f2292 as (select _dlt_parent_id, max(value) as field_2292 from landing_tracker.object_161__field_2292 group by 1)

select
    o161.id as _id,
    o161.created,
    o161.updated,
    o161.user_id,
    o161.utility_key,
    o161.approval_status,
    o161.account_status,
    o161.field_2288_first as field_2288__first,
    o161.field_2288_last as field_2288__last,
    o161.field_2288_full as field_2288__full,
    o161.field_2289_email as field_2289__email,
    o161.field_2290,
    o161.created_at,
    o161.updated_at,
    o161._dlt_load_id,
    o161._dlt_id,
    o161.field_2289_label as field_2289__label,
    o161f2291.field_2291,
    o161f2292.field_2292,
    false as deleted
from o161
left join o161f2291 on o161._dlt_id = o161f2291._dlt_parent_id
left join o161f2292 on o161._dlt_id = o161f2292._dlt_parent_id