with
o139 as (select * from landing_tracker.object_139),
o139f2004 as (select _dlt_parent_id, max(value) as field_2004 from landing_tracker.object_139__field_2004 group by 1),
o139f2005 as (select _dlt_parent_id, max(value) as field_2005 from landing_tracker.object_139__field_2005 group by 1),
o139f2008 as (select _dlt_parent_id, max(value) as field_2008 from landing_tracker.object_139__field_2008 group by 1),
o139f2019 as (select _dlt_parent_id, max(value) as field_2019 from landing_tracker.object_139__field_2019 group by 1),
o139f2020 as (select _dlt_parent_id, max(value) as field_2020 from landing_tracker.object_139__field_2020 group by 1),
o139f2179 as (select _dlt_parent_id, max(value) as field_2179 from landing_tracker.object_139__field_2179 group by 1),
o139f2180 as (select _dlt_parent_id, max(value) as field_2180 from landing_tracker.object_139__field_2180 group by 1)

select
    o139.id as _id,
    o139.created,
    o139.updated,
    o139.field_2006,
    o139.field_2046,
    o139.field_2233,
    o139.field_2012_street as field_2012__street,
    o139.field_2012_city as field_2012__city,
    o139.field_2012_state as field_2012__state,
    o139.field_2012_zip as field_2012__zip,
    o139.field_2012_full as field_2012__full,
    o139.field_2017,
    o139.field_2009_date as field_2009,
    o139.field_2009_all_day as field_2009__all_day,
    o139.field_2010_date as field_2010,
    o139.field_2010_all_day as field_2010__all_day,
    o139.field_2174,
    o139.field_2194,
    o139.created_at,
    o139.updated_at,
    o139._dlt_load_id,
    o139._dlt_id,
    o139.field_2012_street2 as field_2012__street2,
    o139.field_2396,
    o139.field_2556,
    o139.field_2557,
    o139.field_3075,
    o139f2004.field_2004,
    o139f2005.field_2005,
    o139f2008.field_2008,
    o139f2019.field_2019,
    o139f2020.field_2020,
    o139f2179.field_2179,
    o139f2180.field_2180,
    false as deleted
from o139
left join o139f2004 on o139._dlt_id = o139f2004._dlt_parent_id
left join o139f2005 on o139._dlt_id = o139f2005._dlt_parent_id
left join o139f2008 on o139._dlt_id = o139f2008._dlt_parent_id
left join o139f2019 on o139._dlt_id = o139f2019._dlt_parent_id
left join o139f2020 on o139._dlt_id = o139f2020._dlt_parent_id
left join o139f2179 on o139._dlt_id = o139f2179._dlt_parent_id
left join o139f2180 on o139._dlt_id = o139f2180._dlt_parent_id