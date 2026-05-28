with
o62 as (select * from landing_tracker.object_62),
o62f739 as (select _dlt_parent_id, max(value) as field_739 from landing_tracker.object_62__field_739 group by 1),
o62f740 as (select _dlt_parent_id, max(value) as field_740 from landing_tracker.object_62__field_740 group by 1)

select
    o62.id as _id,
    o62.created,
    o62.updated,
    o62.user_id,
    o62.utility_key,
    o62.approval_status,
    o62.account_status,
    o62.field_736_first as field_736__first,
    o62.field_736_last as field_736__last,
    o62.field_736_full as field_736__full,
    o62.field_737_email as field_737__email,
    o62.field_738,
    o62.created_at,
    o62.updated_at,
    o62._dlt_load_id,
    o62._dlt_id,
    o62.field_737_label as field_737__label,
    o62f739.field_739,
    o62f740.field_740,
    false as deleted
from o62
left join o62f739 on o62._dlt_id = o62f739._dlt_parent_id
left join o62f740 on o62._dlt_id = o62f740._dlt_parent_id