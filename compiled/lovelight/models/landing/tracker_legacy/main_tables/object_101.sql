with
o101 as (select * from landing_tracker.object_101),
o101f1434 as (select _dlt_parent_id, max(value) as field_1434 from landing_tracker.object_101__field_1434 group by 1)

select
    o101.id as _id,
    o101.created,
    o101.updated,
    o101.field_1733,
    o101.field_1414,
    o101.field_1429,
    o101.field_1431,
    o101.created_at,
    o101.updated_at,
    o101._dlt_load_id,
    o101._dlt_id,
    o101.field_1441_email as field_1441__email,
    o101.field_1432_date as field_1432,
    o101.field_1432_all_day as field_1432__all_day,
    o101.field_1433,
    o101.field_1453_longitude as field_1453__longitude,
    o101.field_1453_latitude as field_1453__latitude,
    o101.field_1453_street2 as field_1453__street2,
    o101.field_1453_city as field_1453__city,
    o101.field_1453_state as field_1453__state,
    o101.field_1453_zip as field_1453__zip,
    o101.field_1453_full as field_1453__full,
    o101.field_1453_street as field_1453__street,
    o101.field_1501_url as field_1501__url,
    o101.field_1442,
    o101.field_1541_url as field_1541__url,
    o101.field_1440,
    o101f1434.field_1434,
    false as deleted
from o101
left join o101f1434 on o101._dlt_id = o101f1434._dlt_parent_id