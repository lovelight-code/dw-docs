with
o117 as (select * from landing_tracker.object_117),
o117f1731 as (select _dlt_parent_id, max(value) as field_1731 from landing_tracker.object_117__field_1731 group by 1),
o117f1732 as (select _dlt_parent_id, max(value) as field_1732 from landing_tracker.object_117__field_1732 group by 1)

select
    o117.id as _id,
    o117.created,
    o117.updated,
    o117.user_id,
    o117.approval_status,
    o117.account_status,
    o117.field_1728_first as field_1728__first,
    o117.field_1728_last as field_1728__last,
    o117.field_1728_full as field_1728__full,
    o117.field_1729_email as field_1729__email,
    o117.field_1730,
    o117.created_at,
    o117.updated_at,
    o117._dlt_load_id,
    o117._dlt_id,
    o117.utility_key,
    o117.field_1729_label as field_1729__label,
    o117f1731.field_1731,
    o117f1732.field_1732,
    false as deleted
from o117
left join o117f1731 on o117._dlt_id = o117f1731._dlt_parent_id
left join o117f1732 on o117._dlt_id = o117f1732._dlt_parent_id