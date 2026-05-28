with
o105 as (select * from landing_tracker.object_105),
o105f1510 as (select _dlt_parent_id, max(value) as field_1510 from landing_tracker.object_105__field_1510 group by 1),
o105f1511 as (select _dlt_parent_id, max(value) as field_1511 from landing_tracker.object_105__field_1511 group by 1)

select
    o105.id as _id,
    o105.created,
    o105.updated,
    o105.user_id,
    o105.approval_status,
    o105.account_status,
    o105.field_1507_first as field_1507__first,
    o105.field_1507_last as field_1507__last,
    o105.field_1507_full as field_1507__full,
    o105.field_1508_email as field_1508__email,
    o105.field_1509,
    o105.created_at,
    o105.updated_at,
    o105._dlt_load_id,
    o105._dlt_id,
    o105f1510.field_1510,
    o105f1511.field_1511,
    false as deleted
from o105
left join o105f1510 on o105._dlt_id = o105f1510._dlt_parent_id
left join o105f1511 on o105._dlt_id = o105f1511._dlt_parent_id