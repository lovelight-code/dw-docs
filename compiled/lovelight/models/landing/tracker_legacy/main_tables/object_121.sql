with
o121 as (select * from landing_tracker.object_121)

select
    o121.id as _id,
    o121.created,
    o121.updated,
    o121.field_1758,
    o121.field_1759,
    o121.field_1765,
    o121.field_1761,
    o121.field_1763,
    o121.field_1881,
    o121.field_1905,
    o121.created_at,
    o121.updated_at,
    o121._dlt_load_id,
    o121._dlt_id,
    o121.field_1880,
    false as deleted
from o121