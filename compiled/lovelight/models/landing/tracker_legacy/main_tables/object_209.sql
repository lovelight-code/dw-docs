with
o209 as (select * from landing_tracker.object_209),
o209f3026 as (select _dlt_parent_id, max(value) as field_3026 from landing_tracker.object_209__field_3026 group by 1)

select
    o209.id as _id,
    o209.created,
    o209.updated,
    o209.field_3021,
    o209.field_3022_date as field_3022,
    o209.field_3022_all_day as field_3022__all_day,
    o209.field_3025_date as field_3025,
    o209.field_3025_all_day as field_3025__all_day,
    o209.field_3027,
    o209.field_3031_date as field_3031,
    o209.field_3031_all_day as field_3031__all_day,
    o209.field_3020,
    o209.created_at,
    o209.updated_at,
    o209._dlt_load_id,
    o209._dlt_id,
    o209.field_3024_date as field_3024,
    o209.field_3024_all_day as field_3024__all_day,
    o209.field_3158,
    o209.field_3159,
    o209f3026.field_3026,
    false as deleted
from o209
left join o209f3026 on o209._dlt_id = o209f3026._dlt_parent_id