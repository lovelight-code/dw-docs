with
o138 as (select * from landing_tracker.object_138)

select
    o138.id as _id,
    o138.created,
    o138.updated,
    o138.field_1989,
    o138.field_1988_date as field_1988,
    o138.field_1988_all_day as field_1988__all_day,
    o138.created_at,
    o138.updated_at,
    o138._dlt_load_id,
    o138._dlt_id,
    false as deleted
from o138