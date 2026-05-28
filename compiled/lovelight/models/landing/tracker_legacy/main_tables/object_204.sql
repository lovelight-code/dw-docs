with
o204 as (select * from landing_tracker.object_204)

select
    o204.id as _id,
    o204.created,
    o204.updated,
    o204.field_2968,
    o204.field_2947_date as field_2947,
    o204.field_2947_all_day as field_2947__all_day,
    o204.field_3000_date as field_3000,
    o204.field_3000_all_day as field_3000__all_day,
    o204.field_2969,
    o204.field_2946_date as field_2946,
    o204.field_2946_all_day as field_2946__all_day,
    o204.field_2967,
    o204.created_at,
    o204.updated_at,
    o204._dlt_load_id,
    o204._dlt_id,
    false as deleted
from o204