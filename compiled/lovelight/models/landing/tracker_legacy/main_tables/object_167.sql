with
o167 as (select * from landing_tracker.object_167),
o167f2409 as (select _dlt_parent_id, max(value) as field_2409 from landing_tracker.object_167__field_2409 group by 1),
o167f2410 as (select _dlt_parent_id, max(value) as field_2410 from landing_tracker.object_167__field_2410 group by 1)

select
    o167.id as _id,
    o167.created,
    o167.updated,
    o167.user_id,
    o167.utility_key,
    o167.approval_status,
    o167.account_status,
    o167.field_2406_first as field_2406__first,
    o167.field_2406_last as field_2406__last,
    o167.field_2406_full as field_2406__full,
    o167.field_2407_email as field_2407__email,
    o167.field_2408,
    o167.created_at,
    o167.updated_at,
    o167._dlt_load_id,
    o167._dlt_id,
    o167f2409.field_2409,
    o167f2410.field_2410,
    false as deleted
from o167
left join o167f2409 on o167._dlt_id = o167f2409._dlt_parent_id
left join o167f2410 on o167._dlt_id = o167f2410._dlt_parent_id