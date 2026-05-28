with
o210 as (select * from landing_tracker.object_210),
o210f3050 as (select _dlt_parent_id, max(value) as field_3050 from landing_tracker.object_210__field_3050 group by 1),
o210f3051 as (select _dlt_parent_id, max(value) as field_3051 from landing_tracker.object_210__field_3051 group by 1)

select
    o210.id as _id,
    o210.created,
    o210.updated,
    o210.user_id,
    o210.utility_key,
    o210.approval_status,
    o210.account_status,
    o210.field_3047_first as field_3047__first,
    o210.field_3047_last as field_3047__last,
    o210.field_3047_full as field_3047__full,
    o210.field_3048_email as field_3048__email,
    o210.field_3049,
    o210.created_at,
    o210.updated_at,
    o210._dlt_load_id,
    o210._dlt_id,
    o210.field_3048_label as field_3048__label,
    o210f3050.field_3050,
    o210f3051.field_3051,
    false as deleted
from o210
left join o210f3050 on o210._dlt_id = o210f3050._dlt_parent_id
left join o210f3051 on o210._dlt_id = o210f3051._dlt_parent_id