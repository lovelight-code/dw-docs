with
o183 as (select * from landing_tracker.object_183)

select
    o183.id as _id,
    o183.created,
    o183.updated,
    o183.field_2661,
    o183.field_2659,
    o183.field_2660,
    o183.field_2649,
    o183.field_2668,
    o183.created_at,
    o183.updated_at,
    o183._dlt_load_id,
    o183._dlt_id,
    false as deleted
from o183