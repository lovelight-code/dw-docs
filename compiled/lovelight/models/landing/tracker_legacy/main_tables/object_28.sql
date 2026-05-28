with
o28 as (select * from landing_tracker.object_28)

select
    o28.id as _id,
    o28.created,
    o28.updated,
    o28.field_2985,
    o28.field_244,
    o28.field_241,
    o28.field_1668,
    o28.field_1651,
    o28.field_243,
    o28.field_246,
    o28.field_484,
    o28.field_1828,
    o28.created_at,
    o28.updated_at,
    o28._dlt_load_id,
    o28._dlt_id,
    false as deleted
from o28