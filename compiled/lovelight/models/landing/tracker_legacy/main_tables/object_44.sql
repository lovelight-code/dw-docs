with
o44 as (select * from landing_tracker.object_44),
o44f453 as (select _dlt_parent_id, max(value) as field_453 from landing_tracker.object_44__field_453 group by 1),
o44f454 as (select _dlt_parent_id, max(value) as field_454 from landing_tracker.object_44__field_454 group by 1)

select
    o44.id as _id,
    o44.created,
    o44.updated,
    o44.user_id,
    o44.approval_status,
    o44.account_status,
    o44.field_450_first as field_450__first,
    o44.field_450_full as field_450__full,
    o44.field_451_email as field_451__email,
    o44.field_452,
    o44.created_at,
    o44.updated_at,
    o44._dlt_load_id,
    o44._dlt_id,
    o44.field_450_last as field_450__last,
    o44.utility_key,
    o44.field_451_label as field_451__label,
    o44f453.field_453,
    o44f454.field_454,
    false as deleted
from o44
left join o44f453 on o44._dlt_id = o44f453._dlt_parent_id
left join o44f454 on o44._dlt_id = o44f454._dlt_parent_id