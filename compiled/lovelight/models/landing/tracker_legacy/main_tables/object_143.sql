with
o143 as (select * from landing_tracker.object_143),
o143f2062 as (select _dlt_parent_id, max(value) as field_2062 from landing_tracker.object_143__field_2062 group by 1),
o143f2063 as (select _dlt_parent_id, max(value) as field_2063 from landing_tracker.object_143__field_2063 group by 1)

select
    o143.id as _id,
    o143.created,
    o143.updated,
    o143.user_id,
    o143.approval_status,
    o143.account_status,
    o143.field_2059_first as field_2059__first,
    o143.field_2059_last as field_2059__last,
    o143.field_2059_full as field_2059__full,
    o143.field_2060_email as field_2060__email,
    o143.field_2061,
    o143.created_at,
    o143.updated_at,
    o143._dlt_load_id,
    o143._dlt_id,
    o143.utility_key,
    o143.field_2060_label as field_2060__label,
    o143f2062.field_2062,
    o143f2063.field_2063,
    false as deleted
from o143
left join o143f2062 on o143._dlt_id = o143f2062._dlt_parent_id
left join o143f2063 on o143._dlt_id = o143f2063._dlt_parent_id