with
o211 as (select * from landing_tracker.object_211),
o211f3056 as (select _dlt_parent_id, max(value) as field_3056 from landing_tracker.object_211__field_3056 group by 1)

select
    o211.id as _id,
    o211.created,
    o211.updated,
    o211.field_3057,
    o211.field_3062,
    o211.field_3058,
    o211.field_3063,
    o211.field_3059,
    o211.field_3064,
    o211.field_3060_date as field_3060,
    o211.field_3060_all_day as field_3060__all_day,
    o211.created_at,
    o211.updated_at,
    o211._dlt_load_id,
    o211._dlt_id,
    o211f3056.field_3056,
    false as deleted
from o211
left join o211f3056 on o211._dlt_id = o211f3056._dlt_parent_id