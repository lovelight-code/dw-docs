with
o78 as (select * from landing_tracker.object_78),
o78f1005 as (select _dlt_parent_id, max(value) as field_1005 from landing_tracker.object_78__field_1005 group by 1),
o78f1476 as (select _dlt_parent_id, max(value) as field_1476 from landing_tracker.object_78__field_1476 group by 1),
o78f1494 as (select _dlt_parent_id, max(value) as field_1494 from landing_tracker.object_78__field_1494 group by 1),
o78f1495 as (select _dlt_parent_id, max(value) as field_1495 from landing_tracker.object_78__field_1495 group by 1),
o78f1542 as (select _dlt_parent_id, max(value) as field_1542 from landing_tracker.object_78__field_1542 group by 1),
o78f1546 as (select _dlt_parent_id, max(value) as field_1546 from landing_tracker.object_78__field_1546 group by 1),
o78f1547 as (select _dlt_parent_id, max(value) as field_1547 from landing_tracker.object_78__field_1547 group by 1),
o78f1548 as (select _dlt_parent_id, max(value) as field_1548 from landing_tracker.object_78__field_1548 group by 1),
o78f1549 as (select _dlt_parent_id, max(value) as field_1549 from landing_tracker.object_78__field_1549 group by 1),
o78f1579 as (select _dlt_parent_id, max(value) as field_1579 from landing_tracker.object_78__field_1579 group by 1),
o78f1582 as (select _dlt_parent_id, max(value) as field_1582 from landing_tracker.object_78__field_1582 group by 1),
o78f1622 as (select _dlt_parent_id, max(value) as field_1622 from landing_tracker.object_78__field_1622 group by 1),
o78f1623 as (select _dlt_parent_id, max(value) as field_1623 from landing_tracker.object_78__field_1623 group by 1),
o78f1625 as (select _dlt_parent_id, max(value) as field_1625 from landing_tracker.object_78__field_1625 group by 1),
o78f1626 as (select _dlt_parent_id, max(value) as field_1626 from landing_tracker.object_78__field_1626 group by 1),
o78f1633 as (select _dlt_parent_id, max(value) as field_1633 from landing_tracker.object_78__field_1633 group by 1),
o78f1660 as (select _dlt_parent_id, max(value) as field_1660 from landing_tracker.object_78__field_1660 group by 1),
o78f1930 as (select _dlt_parent_id, max(value) as field_1930 from landing_tracker.object_78__field_1930 group by 1),
o78f1931 as (select _dlt_parent_id, max(value) as field_1931 from landing_tracker.object_78__field_1931 group by 1),
o78f2374 as (select _dlt_parent_id, max(value) as field_2374 from landing_tracker.object_78__field_2374 group by 1),
o78f2518 as (select _dlt_parent_id, max(value) as field_2518 from landing_tracker.object_78__field_2518 group by 1),
o78f2519 as (select _dlt_parent_id, max(value) as field_2519 from landing_tracker.object_78__field_2519 group by 1),
o78f2520 as (select _dlt_parent_id, max(value) as field_2520 from landing_tracker.object_78__field_2520 group by 1),
o78f2521 as (select _dlt_parent_id, max(value) as field_2521 from landing_tracker.object_78__field_2521 group by 1),
o78f2522 as (select _dlt_parent_id, max(value) as field_2522 from landing_tracker.object_78__field_2522 group by 1),
o78f2523 as (select _dlt_parent_id, max(value) as field_2523 from landing_tracker.object_78__field_2523 group by 1),
o78f2524 as (select _dlt_parent_id, max(value) as field_2524 from landing_tracker.object_78__field_2524 group by 1),
o78f2551 as (select _dlt_parent_id, max(value) as field_2551 from landing_tracker.object_78__field_2551 group by 1),
o78f2589 as (select _dlt_parent_id, max(value) as field_2589 from landing_tracker.object_78__field_2589 group by 1),
o78f2590 as (select _dlt_parent_id, max(value) as field_2590 from landing_tracker.object_78__field_2590 group by 1),
o78f2645 as (select _dlt_parent_id, max(value) as field_2645 from landing_tracker.object_78__field_2645 group by 1),
o78f2651 as (select _dlt_parent_id, max(value) as field_2651 from landing_tracker.object_78__field_2651 group by 1),
o78f2729 as (select _dlt_parent_id, max(value) as field_2729 from landing_tracker.object_78__field_2729 group by 1),
o78f3100 as (select _dlt_parent_id, max(value) as field_3100 from landing_tracker.object_78__field_3100 group by 1),
o78f3135 as (select _dlt_parent_id, max(value) as field_3135 from landing_tracker.object_78__field_3135 group by 1),
o78f3138 as (select _dlt_parent_id, max(value) as field_3138 from landing_tracker.object_78__field_3138 group by 1),
o78f3140 as (select _dlt_parent_id, max(value) as field_3140 from landing_tracker.object_78__field_3140 group by 1),
o78f925 as (select _dlt_parent_id, max(value) as field_925 from landing_tracker.object_78__field_925 group by 1)

select
    o78.id as _id,
    o78.created,
    o78.updated,
    o78.field_1031,
    o78.field_955,
    o78.field_1634,
    o78.field_1481,
    o78.field_1488,
    o78.field_2692,
    o78.field_1502_date as field_1502,
    o78.field_1502_all_day as field_1502__all_day,
    o78.field_1661,
    o78.field_924_date as field_924,
    o78.field_924_to as field_924__to,
    o78.field_924_all_day as field_924__all_day,
    o78.field_2693,
    o78.field_939_date as field_939,
    o78.field_939_all_day as field_939__all_day,
    o78.field_1485,
    o78.field_929,
    o78.field_1545,
    o78.field_1632,
    o78.field_1550,
    o78.field_1551,
    o78.field_981_longitude as field_981__longitude,
    o78.field_981_latitude as field_981__latitude,
    o78.field_981_street as field_981__street,
    o78.field_981_city as field_981__city,
    o78.field_981_state as field_981__state,
    o78.field_981_zip as field_981__zip,
    o78.field_981_full as field_981__full,
    o78.field_1588,
    o78.field_1081,
    o78.field_1475,
    o78.field_953,
    o78.field_980,
    o78.field_1489,
    o78.field_2792,
    o78.field_1082,
    o78.field_1101,
    o78.field_1496,
    o78.field_1500,
    o78.field_1581,
    o78.field_1630,
    o78.field_1840,
    o78.field_1853,
    o78.field_1944,
    o78.field_2414,
    o78.field_2461,
    o78.field_2470,
    o78.field_2643,
    o78.created_at,
    o78.updated_at,
    o78._dlt_load_id,
    o78._dlt_id,
    o78.field_2587,
    o78.field_2592_date as field_2592,
    o78.field_2592_all_day as field_2592__all_day,
    o78.field_2636,
    o78.field_3054,
    o78.field_981_street2 as field_981__street2,
    o78.field_2596_date as field_2596,
    o78.field_2596_all_day as field_2596__all_day,
    o78.field_924_repeat__fr as field_924__repeat__fr,
    o78.field_924_repeat__mo as field_924__repeat__mo,
    o78.field_924_repeat__sa as field_924__repeat__sa,
    o78.field_924_repeat__su as field_924__repeat__su,
    o78.field_924_repeat__th as field_924__repeat__th,
    o78.field_924_repeat__tu as field_924__repeat__tu,
    o78.field_924_repeat__we as field_924__repeat__we,
    o78.field_924_repeat__endson as field_924__repeat__endson,
    o78.field_924_repeat__end_date as field_924__repeat__end_date,
    o78.field_924_repeat__interval as field_924__repeat__interval,
    o78.field_924_repeat__repeatby as field_924__repeat__repeatby,
    o78.field_924_repeat__end_count as field_924__repeat__end_count,
    o78.field_924_repeat__frequency as field_924__repeat__frequency,
    o78.field_924_repeat__undefined as field_924__repeat__undefined,
    o78.field_924_repeat__start_date as field_924__repeat__start_date,
    o78.field_1616,
    o78.field_1477,
    o78.field_2591,
    o78.field_1580,
    o78.field_1503,
    o78.field_1552_date as field_1552,
    o78.field_1552_all_day as field_1552__all_day,
    o78.field_1624,
    o78.field_2485,
    o78.field_2137,
    o78.field_2377,
    o78.field_1627,
    o78.field_2688,
    o78.field_3136,
    o78.field_3137,
    o78.field_981_country as field_981__country,
    o78.field_2525,
    o78.field_1638,
    o78.field_2178,
    o78.field_1591,
    o78f1005.field_1005,
    o78f1476.field_1476,
    o78f1494.field_1494,
    o78f1495.field_1495,
    o78f1542.field_1542,
    o78f1546.field_1546,
    o78f1547.field_1547,
    o78f1548.field_1548,
    o78f1549.field_1549,
    o78f1579.field_1579,
    o78f1582.field_1582,
    o78f1622.field_1622,
    o78f1623.field_1623,
    o78f1625.field_1625,
    o78f1626.field_1626,
    o78f1633.field_1633,
    o78f1660.field_1660,
    o78f1930.field_1930,
    o78f1931.field_1931,
    o78f2374.field_2374,
    o78f2518.field_2518,
    o78f2519.field_2519,
    o78f2520.field_2520,
    o78f2521.field_2521,
    o78f2522.field_2522,
    o78f2523.field_2523,
    o78f2524.field_2524,
    o78f2551.field_2551,
    o78f2589.field_2589,
    o78f2590.field_2590,
    o78f2645.field_2645,
    o78f2651.field_2651,
    o78f2729.field_2729,
    o78f3100.field_3100,
    o78f3135.field_3135,
    o78f3138.field_3138,
    o78f3140.field_3140,
    o78f925.field_925,
    false as deleted
from o78
left join o78f1005 on o78._dlt_id = o78f1005._dlt_parent_id
left join o78f1476 on o78._dlt_id = o78f1476._dlt_parent_id
left join o78f1494 on o78._dlt_id = o78f1494._dlt_parent_id
left join o78f1495 on o78._dlt_id = o78f1495._dlt_parent_id
left join o78f1542 on o78._dlt_id = o78f1542._dlt_parent_id
left join o78f1546 on o78._dlt_id = o78f1546._dlt_parent_id
left join o78f1547 on o78._dlt_id = o78f1547._dlt_parent_id
left join o78f1548 on o78._dlt_id = o78f1548._dlt_parent_id
left join o78f1549 on o78._dlt_id = o78f1549._dlt_parent_id
left join o78f1579 on o78._dlt_id = o78f1579._dlt_parent_id
left join o78f1582 on o78._dlt_id = o78f1582._dlt_parent_id
left join o78f1622 on o78._dlt_id = o78f1622._dlt_parent_id
left join o78f1623 on o78._dlt_id = o78f1623._dlt_parent_id
left join o78f1625 on o78._dlt_id = o78f1625._dlt_parent_id
left join o78f1626 on o78._dlt_id = o78f1626._dlt_parent_id
left join o78f1633 on o78._dlt_id = o78f1633._dlt_parent_id
left join o78f1660 on o78._dlt_id = o78f1660._dlt_parent_id
left join o78f1930 on o78._dlt_id = o78f1930._dlt_parent_id
left join o78f1931 on o78._dlt_id = o78f1931._dlt_parent_id
left join o78f2374 on o78._dlt_id = o78f2374._dlt_parent_id
left join o78f2518 on o78._dlt_id = o78f2518._dlt_parent_id
left join o78f2519 on o78._dlt_id = o78f2519._dlt_parent_id
left join o78f2520 on o78._dlt_id = o78f2520._dlt_parent_id
left join o78f2521 on o78._dlt_id = o78f2521._dlt_parent_id
left join o78f2522 on o78._dlt_id = o78f2522._dlt_parent_id
left join o78f2523 on o78._dlt_id = o78f2523._dlt_parent_id
left join o78f2524 on o78._dlt_id = o78f2524._dlt_parent_id
left join o78f2551 on o78._dlt_id = o78f2551._dlt_parent_id
left join o78f2589 on o78._dlt_id = o78f2589._dlt_parent_id
left join o78f2590 on o78._dlt_id = o78f2590._dlt_parent_id
left join o78f2645 on o78._dlt_id = o78f2645._dlt_parent_id
left join o78f2651 on o78._dlt_id = o78f2651._dlt_parent_id
left join o78f2729 on o78._dlt_id = o78f2729._dlt_parent_id
left join o78f3100 on o78._dlt_id = o78f3100._dlt_parent_id
left join o78f3135 on o78._dlt_id = o78f3135._dlt_parent_id
left join o78f3138 on o78._dlt_id = o78f3138._dlt_parent_id
left join o78f3140 on o78._dlt_id = o78f3140._dlt_parent_id
left join o78f925 on o78._dlt_id = o78f925._dlt_parent_id