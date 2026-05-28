with
o205 as (select * from landing_tracker.object_205)

select
    o205.id as _id,
    o205.created,
    o205.updated,
    o205.field_2953,
    o205.field_2952_date as field_2952,
    o205.field_2952_all_day as field_2952__all_day,
    o205.field_2955,
    o205.created_at,
    o205.updated_at,
    o205._dlt_load_id,
    o205._dlt_id,
    false as deleted
from o205