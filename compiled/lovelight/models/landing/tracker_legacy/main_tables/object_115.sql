with
o115 as (select * from landing_tracker.object_115)

select
    o115.id as _id,
    o115.created,
    o115.updated,
    o115.field_1693,
    o115.field_1772,
    o115.field_1775,
    o115.field_1774,
    o115.field_1773,
    o115.created_at,
    o115.updated_at,
    o115._dlt_load_id,
    o115._dlt_id,
    false as deleted
from o115