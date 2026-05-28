with
o8 as (select * from landing_tracker.object_8),
o8f26 as (select _dlt_parent_id, max(value) as field_26 from landing_tracker.object_8__field_26 group by 1),
o8f27 as (select _dlt_parent_id, max(value) as field_27 from landing_tracker.object_8__field_27 group by 1)

select
    o8.id as _id,
    o8.created,
    o8.updated,
    o8.utility_key,
    o8.approval_status,
    o8.account_status,
    o8.field_23_first as field_23__first,
    o8.field_23_last as field_23__last,
    o8.field_23_full as field_23__full,
    o8.field_24_email as field_24__email,
    o8.field_25,
    o8.field_1852,
    o8.field_1676,
    o8.field_1677,
    o8.field_1746,
    o8.field_2531,
    o8.created_at,
    o8.updated_at,
    o8._dlt_load_id,
    o8._dlt_id,
    o8.field_743_email as field_743__email,
    o8.field_24_label as field_24__label,
    o8.password_expiration,
    o8.field_2500,
    o8f26.field_26,
    o8f27.field_27,
    false as deleted
from o8
left join o8f26 on o8._dlt_id = o8f26._dlt_parent_id
left join o8f27 on o8._dlt_id = o8f27._dlt_parent_id