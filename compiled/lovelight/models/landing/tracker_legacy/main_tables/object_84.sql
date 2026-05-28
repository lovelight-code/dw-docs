with
o84 as (select * from landing_tracker.object_84),
o84f990 as (select _dlt_parent_id, max(value) as field_990 from landing_tracker.object_84__field_990 group by 1),
o84f991 as (select _dlt_parent_id, max(value) as field_991 from landing_tracker.object_84__field_991 group by 1)

select
    o84.id as _id,
    o84.created,
    o84.updated,
    o84.user_id,
    o84.approval_status,
    o84.account_status,
    o84.field_987_first as field_987__first,
    o84.field_987_last as field_987__last,
    o84.field_987_full as field_987__full,
    o84.field_988_email as field_988__email,
    o84.field_989,
    o84.created_at,
    o84.updated_at,
    o84._dlt_load_id,
    o84._dlt_id,
    o84.utility_key,
    o84.field_988_label as field_988__label,
    o84f990.field_990,
    o84f991.field_991,
    false as deleted
from o84
left join o84f990 on o84._dlt_id = o84f990._dlt_parent_id
left join o84f991 on o84._dlt_id = o84f991._dlt_parent_id