with
o122 as (select * from landing_tracker.object_122)

select
    o122.id as _id,
    o122.created,
    o122.updated,
    o122.field_1785,
    o122.field_1794,
    o122.created_at,
    o122.updated_at,
    o122._dlt_load_id,
    o122._dlt_id,
    o122.field_1793,
    false as deleted
from o122