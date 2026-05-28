with
o191 as (select * from landing_tracker.object_191)

select
    o191.id as _id,
    o191.created,
    o191.updated,
    o191.field_2771,
    o191.created_at,
    o191.updated_at,
    o191._dlt_load_id,
    o191._dlt_id,
    false as deleted
from o191