with
o151 as (select * from landing_tracker.object_151),
o151f2201 as (select _dlt_parent_id, max(value) as field_2201 from landing_tracker.object_151__field_2201 group by 1)

select
    o151.id as _id,
    o151.created,
    o151.updated,
    o151.field_2202_date as field_2202,
    o151.field_2202_all_day as field_2202__all_day,
    o151.field_2204,
    o151.created_at,
    o151.updated_at,
    o151._dlt_load_id,
    o151._dlt_id,
    o151f2201.field_2201,
    false as deleted
from o151
left join o151f2201 on o151._dlt_id = o151f2201._dlt_parent_id