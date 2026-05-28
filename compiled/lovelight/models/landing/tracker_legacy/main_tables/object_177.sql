with
o177 as (select * from landing_tracker.object_177),
o177f2546 as (select _dlt_parent_id, max(value) as field_2546 from landing_tracker.object_177__field_2546 group by 1),
o177f2547 as (select _dlt_parent_id, max(value) as field_2547 from landing_tracker.object_177__field_2547 group by 1)

select
    o177.id as _id,
    o177.created,
    o177.updated,
    o177.user_id,
    o177.utility_key,
    o177.approval_status,
    o177.account_status,
    o177.field_2543_first as field_2543__first,
    o177.field_2543_last as field_2543__last,
    o177.field_2543_full as field_2543__full,
    o177.field_2544_email as field_2544__email,
    o177.field_2545,
    o177.created_at,
    o177.updated_at,
    o177._dlt_load_id,
    o177._dlt_id,
    o177.field_2544_label as field_2544__label,
    o177f2546.field_2546,
    o177f2547.field_2547,
    false as deleted
from o177
left join o177f2546 on o177._dlt_id = o177f2546._dlt_parent_id
left join o177f2547 on o177._dlt_id = o177f2547._dlt_parent_id