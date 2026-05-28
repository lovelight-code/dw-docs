with
o169 as (select * from landing_tracker.object_169),
o169f2447 as (select _dlt_parent_id, max(value) as field_2447 from landing_tracker.object_169__field_2447 group by 1),
o169f2448 as (select _dlt_parent_id, max(value) as field_2448 from landing_tracker.object_169__field_2448 group by 1)

select
    o169.id as _id,
    o169.created,
    o169.updated,
    o169.user_id,
    o169.approval_status,
    o169.account_status,
    o169.field_2444_first as field_2444__first,
    o169.field_2444_last as field_2444__last,
    o169.field_2444_full as field_2444__full,
    o169.field_2445_email as field_2445__email,
    o169.field_2446,
    o169.created_at,
    o169.updated_at,
    o169._dlt_load_id,
    o169._dlt_id,
    o169.utility_key,
    o169.field_2445_label as field_2445__label,
    o169f2447.field_2447,
    o169f2448.field_2448,
    false as deleted
from o169
left join o169f2447 on o169._dlt_id = o169f2447._dlt_parent_id
left join o169f2448 on o169._dlt_id = o169f2448._dlt_parent_id