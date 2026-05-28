with
o119 as (select * from landing_tracker.object_119)

select
    o119.id as _id,
    o119.created,
    o119.updated,
    o119.field_1769,
    o119.field_1755,
    o119.field_1753_date as field_1753,
    o119.field_1753_all_day as field_1753__all_day,
    o119.field_1768,
    o119.field_1823,
    o119.created_at,
    o119.updated_at,
    o119._dlt_load_id,
    o119._dlt_id,
    o119.field_1756,
    o119.field_1754,
    false as deleted
from o119