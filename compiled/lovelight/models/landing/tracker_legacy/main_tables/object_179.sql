with
o179 as (select * from landing_tracker.object_179),
o179f2578 as (select _dlt_parent_id, max(value) as field_2578 from landing_tracker.object_179__field_2578 group by 1),
o179f2579 as (select _dlt_parent_id, max(value) as field_2579 from landing_tracker.object_179__field_2579 group by 1)

select
    o179.id as _id,
    o179.created,
    o179.updated,
    o179.user_id,
    o179.approval_status,
    o179.account_status,
    o179.field_2575_first as field_2575__first,
    o179.field_2575_last as field_2575__last,
    o179.field_2575_full as field_2575__full,
    o179.field_2576_email as field_2576__email,
    o179.field_2577,
    o179.created_at,
    o179.updated_at,
    o179._dlt_load_id,
    o179._dlt_id,
    o179.utility_key,
    o179.field_2576_label as field_2576__label,
    o179f2578.field_2578,
    o179f2579.field_2579,
    false as deleted
from o179
left join o179f2578 on o179._dlt_id = o179f2578._dlt_parent_id
left join o179f2579 on o179._dlt_id = o179f2579._dlt_parent_id