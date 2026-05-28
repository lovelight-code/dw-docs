with
o133 as (select * from landing_tracker.object_133)

select
    o133.id as _id,
    o133.created,
    o133.updated,
    o133.field_1912,
    o133.field_1925,
    o133.created_at,
    o133.updated_at,
    o133._dlt_load_id,
    o133._dlt_id,
    false as deleted
from o133