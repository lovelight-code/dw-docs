with
o144 as (select * from landing_tracker.object_144),
o144f2112 as (select _dlt_parent_id, max(value) as field_2112 from landing_tracker.object_144__field_2112 group by 1),
o144f2113 as (select _dlt_parent_id, max(value) as field_2113 from landing_tracker.object_144__field_2113 group by 1)

select
    o144.id as _id,
    o144.created,
    o144.updated,
    o144.user_id,
    o144.approval_status,
    o144.account_status,
    o144.field_2109_first as field_2109__first,
    o144.field_2109_last as field_2109__last,
    o144.field_2109_full as field_2109__full,
    o144.field_2110_email as field_2110__email,
    o144.field_2111,
    o144.created_at,
    o144.updated_at,
    o144._dlt_load_id,
    o144._dlt_id,
    o144.utility_key,
    o144.field_2110_label as field_2110__label,
    o144f2112.field_2112,
    o144f2113.field_2113,
    false as deleted
from o144
left join o144f2112 on o144._dlt_id = o144f2112._dlt_parent_id
left join o144f2113 on o144._dlt_id = o144f2113._dlt_parent_id