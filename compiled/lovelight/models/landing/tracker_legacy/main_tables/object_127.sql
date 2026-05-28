with
o127 as (select * from landing_tracker.object_127)

select
    o127.id as _id,
    o127.created,
    o127.updated,
    o127.field_1861,
    o127.field_1863,
    o127.field_1868,
    o127.field_1866_date as field_1866,
    o127.field_1866_all_day as field_1866__all_day,
    o127.field_1869,
    o127.created_at,
    o127.updated_at,
    o127._dlt_load_id,
    o127._dlt_id,
    false as deleted
from o127