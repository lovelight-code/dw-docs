with
o174 as (select * from landing_tracker.object_174),
o174f2504 as (select _dlt_parent_id, max(value) as field_2504 from landing_tracker.object_174__field_2504 group by 1),
o174f2505 as (select _dlt_parent_id, max(value) as field_2505 from landing_tracker.object_174__field_2505 group by 1)

select
    o174.id as _id,
    o174.created,
    o174.updated,
    o174.user_id,
    o174.utility_key,
    o174.approval_status,
    o174.account_status,
    o174.field_2501_first as field_2501__first,
    o174.field_2501_full as field_2501__full,
    o174.field_2502_email as field_2502__email,
    o174.field_2503,
    o174.created_at,
    o174.updated_at,
    o174._dlt_load_id,
    o174._dlt_id,
    o174.field_2501_last as field_2501__last,
    o174.field_2502_label as field_2502__label,
    o174f2504.field_2504,
    o174f2505.field_2505,
    false as deleted
from o174
left join o174f2504 on o174._dlt_id = o174f2504._dlt_parent_id
left join o174f2505 on o174._dlt_id = o174f2505._dlt_parent_id