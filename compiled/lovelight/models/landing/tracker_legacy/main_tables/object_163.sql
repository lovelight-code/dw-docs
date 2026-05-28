with
o163 as (select * from landing_tracker.object_163),
o163f2325 as (select _dlt_parent_id, max(value) as field_2325 from landing_tracker.object_163__field_2325 group by 1),
o163f2326 as (select _dlt_parent_id, max(value) as field_2326 from landing_tracker.object_163__field_2326 group by 1)

select
    o163.id as _id,
    o163.created,
    o163.updated,
    o163.user_id,
    o163.utility_key,
    o163.approval_status,
    o163.account_status,
    o163.field_2322_first as field_2322__first,
    o163.field_2322_last as field_2322__last,
    o163.field_2322_full as field_2322__full,
    o163.field_2323_email as field_2323__email,
    o163.field_2324,
    o163.created_at,
    o163.updated_at,
    o163._dlt_load_id,
    o163._dlt_id,
    o163.field_2323_label as field_2323__label,
    o163f2325.field_2325,
    o163f2326.field_2326,
    false as deleted
from o163
left join o163f2325 on o163._dlt_id = o163f2325._dlt_parent_id
left join o163f2326 on o163._dlt_id = o163f2326._dlt_parent_id