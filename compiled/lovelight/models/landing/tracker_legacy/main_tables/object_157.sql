with
o157 as (select * from landing_tracker.object_157)

select
    o157.id as _id,
    o157.created,
    o157.updated,
    o157.field_2257,
    o157.field_2258,
    o157.field_2762,
    o157.field_2787,
    o157.field_2788,
    o157.created_at,
    o157.updated_at,
    o157._dlt_load_id,
    o157._dlt_id,
    false as deleted
from o157