with
o82 as (select * from landing_tracker.object_82),
o82f2819 as (select _dlt_parent_id, max(value) as field_2819 from landing_tracker.object_82__field_2819 group by 1),
o82f959 as (select _dlt_parent_id, max(value) as field_959 from landing_tracker.object_82__field_959 group by 1),
o82f960 as (select _dlt_parent_id, max(value) as field_960 from landing_tracker.object_82__field_960 group by 1)

select
    o82.id as _id,
    o82.created,
    o82.updated,
    o82.user_id,
    o82.utility_key,
    o82.approval_status,
    o82.account_status,
    o82.field_956_first as field_956__first,
    o82.field_956_last as field_956__last,
    o82.field_956_full as field_956__full,
    o82.field_1404,
    o82.field_957_email as field_957__email,
    o82.field_958,
    o82.field_1602_number as field_1602__number,
    o82.field_1602_full as field_1602__full,
    o82.field_1323,
    o82.field_1377,
    o82.field_1596,
    o82.field_1603,
    o82.field_2818,
    o82.field_2925,
    o82.created_at,
    o82.updated_at,
    o82._dlt_load_id,
    o82._dlt_id,
    o82.field_2901,
    o82.field_957_label as field_957__label,
    o82f2819.field_2819,
    o82f959.field_959,
    o82f960.field_960,
    false as deleted
from o82
left join o82f2819 on o82._dlt_id = o82f2819._dlt_parent_id
left join o82f959 on o82._dlt_id = o82f959._dlt_parent_id
left join o82f960 on o82._dlt_id = o82f960._dlt_parent_id