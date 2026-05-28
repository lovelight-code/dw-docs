with
o185 as (select * from landing_tracker.object_185)

select
    o185.id as _id,
    o185.created,
    o185.updated,
    o185.field_2654,
    o185.created_at,
    o185.updated_at,
    o185._dlt_load_id,
    o185._dlt_id,
    false as deleted
from o185