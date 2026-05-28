with
o69 as (select * from landing_tracker.object_69),
o69f822 as (select _dlt_parent_id, max(value) as field_822 from landing_tracker.object_69__field_822 group by 1),
o69f823 as (select _dlt_parent_id, max(value) as field_823 from landing_tracker.object_69__field_823 group by 1)

select
    o69.id as _id,
    o69.created,
    o69.updated,
    o69.user_id,
    o69.utility_key,
    o69.approval_status,
    o69.account_status,
    o69.field_819_first as field_819__first,
    o69.field_819_last as field_819__last,
    o69.field_819_full as field_819__full,
    o69.field_820_email as field_820__email,
    o69.field_821,
    o69.created_at,
    o69.updated_at,
    o69._dlt_load_id,
    o69._dlt_id,
    o69.field_820_label as field_820__label,
    o69f822.field_822,
    o69f823.field_823,
    false as deleted
from o69
left join o69f822 on o69._dlt_id = o69f822._dlt_parent_id
left join o69f823 on o69._dlt_id = o69f823._dlt_parent_id