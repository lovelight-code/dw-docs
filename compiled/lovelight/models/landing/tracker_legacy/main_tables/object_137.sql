with
o137 as (select * from landing_tracker.object_137)

select
    o137.id as _id,
    o137.created,
    o137.updated,
    o137.field_1963,
    o137.field_1964_date as field_1964,
    o137.field_1964_all_day as field_1964__all_day,
    o137.field_1966,
    o137.field_1969,
    o137.field_1970,
    o137.field_1971,
    o137.field_1972,
    o137.field_1973,
    o137.field_1974,
    o137.field_1975,
    o137.field_1976,
    o137.created_at,
    o137.updated_at,
    o137._dlt_load_id,
    o137._dlt_id,
    o137.field_1967,
    o137.field_1977,
    o137.field_1968,
    false as deleted
from o137