with
o176 as (select * from landing_tracker.object_176),
o176f2541 as (select _dlt_parent_id, max(value) as field_2541 from landing_tracker.object_176__field_2541 group by 1),
o176f2542 as (select _dlt_parent_id, max(value) as field_2542 from landing_tracker.object_176__field_2542 group by 1)

select
    o176.id as _id,
    o176.created,
    o176.updated,
    o176.user_id,
    o176.utility_key,
    o176.approval_status,
    o176.account_status,
    o176.field_2538_first as field_2538__first,
    o176.field_2538_last as field_2538__last,
    o176.field_2538_full as field_2538__full,
    o176.field_2539_email as field_2539__email,
    o176.field_2539_label as field_2539__label,
    o176.field_2540,
    o176.created_at,
    o176.updated_at,
    o176._dlt_load_id,
    o176._dlt_id,
    o176f2541.field_2541,
    o176f2542.field_2542,
    false as deleted
from o176
left join o176f2541 on o176._dlt_id = o176f2541._dlt_parent_id
left join o176f2542 on o176._dlt_id = o176f2542._dlt_parent_id