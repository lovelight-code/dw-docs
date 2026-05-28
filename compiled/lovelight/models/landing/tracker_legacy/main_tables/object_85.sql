with
o85 as (select * from landing_tracker.object_85),
o85f1021 as (select _dlt_parent_id, max(value) as field_1021 from landing_tracker.object_85__field_1021 group by 1),
o85f1022 as (select _dlt_parent_id, max(value) as field_1022 from landing_tracker.object_85__field_1022 group by 1)

select
    o85.id as _id,
    o85.created,
    o85.updated,
    o85.user_id,
    o85.utility_key,
    o85.approval_status,
    o85.account_status,
    o85.field_1018_first as field_1018__first,
    o85.field_1018_last as field_1018__last,
    o85.field_1018_full as field_1018__full,
    o85.field_1019_email as field_1019__email,
    o85.field_1019_label as field_1019__label,
    o85.field_1020,
    o85.created_at,
    o85.updated_at,
    o85._dlt_load_id,
    o85._dlt_id,
    o85f1021.field_1021,
    o85f1022.field_1022,
    false as deleted
from o85
left join o85f1021 on o85._dlt_id = o85f1021._dlt_parent_id
left join o85f1022 on o85._dlt_id = o85f1022._dlt_parent_id