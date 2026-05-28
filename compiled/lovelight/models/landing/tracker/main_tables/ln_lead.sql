-- ============================================================
-- Model: ln_lead
-- Description: Landing-layer view that flattens object_81
--              and its subtables into one record per lead.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_81 table
-- ------------------------------------------------------------
o81 as (
    select *
    from landing_tracker.object_81
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_81__field_1902
-- ------------------------------------------------------------
o81f1902 as (
    select
        _dlt_parent_id,
        max(value) as business_unit
    from landing_tracker.object_81__field_1902
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_81__field_1903
-- ------------------------------------------------------------
o81f1903 as (
    select
        _dlt_parent_id,
        max(value) as dead_reason
    from landing_tracker.object_81__field_1903
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_81__field_1993
-- ------------------------------------------------------------
o81f1993 as (
    select
        _dlt_parent_id,
        max(value) as lead_type
    from landing_tracker.object_81__field_1993
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_81__field_2186
-- ------------------------------------------------------------
o81f2186 as (
    select
        _dlt_parent_id,
        max(value) as inbound_outbound
    from landing_tracker.object_81__field_2186
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_81__field_3072
-- ------------------------------------------------------------
o81f3072 as (
    select
        _dlt_parent_id,
        max(value) as daily_update
    from landing_tracker.object_81__field_3072
    group by 1
),

-- ------------------------------------------------------------
-- Subtable: object_81__field_3074
-- ------------------------------------------------------------
o81f3074 as (
    select
        _dlt_parent_id,
        max(value) as swp_salesperson_confirmed
    from landing_tracker.object_81__field_3074
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o81.id,
    o81.created as src_created_at,
    o81.updated as src_updated_at,
    o81.field_1697_all_day as status_change_date_all_day,
    o81.field_1697_date as status_change_date,
    o81.field_1698_all_day as lead_closed_date_all_day,
    o81.field_1698_date as lead_closed_date,
    o81.field_1715_all_day as created_date_all_day,
    o81.field_1715_date as created_date,
    o81.field_1716 as created_by,
    o81.field_1717 as age,
    o81.field_1718 as days_in_status,
    o81.field_1722 as scheduled_activity,
    o81.field_1723 as temp,
    o81.field_1742_full as contact_number_full,
    o81.field_1742_number as contact_number,
    o81.field_1744_email as contact_email,
    o81.field_1744_label as contact_email_label,
    o81.field_1941 as volume_builder_po_number,
    o81.field_1946_first as contact_name_first,
    o81.field_1946_full as contact_name_full,
    o81.field_1946_last as contact_name_last,
    o81.field_1946_title as contact_name_title,
    o81.field_1948_city as site_address_city,
    o81.field_1948_full as site_address_full,
    o81.field_1948_latitude as site_address_latitude,
    o81.field_1948_longitude as site_address_longitude,
    o81.field_1948_state as site_address_state,
    o81.field_1948_street as site_address_street,
    o81.field_1948_street2 as site_address_street2,
    o81.field_1948_zip as site_address_zip,
    o81.field_1954 as synced_tool_folder,
    o81.field_2075 as bci_number,
    o81.field_2237_all_day as slack_notification_sent_at_all_day,
    o81.field_2237_date as slack_notification_sent_at_date,
    o81.field_948 as lead_title_description,
    o81.field_964 as estimated_value,
    o81.field_968 as lead_detail,
    o81.field_970 as src_sys_id,
    o81.field_986_all_day as expected_close_date_all_day,
    o81.field_986_date as expected_close_date,
    o81f1902.business_unit as business_unit,
    o81f1903.dead_reason as dead_reason,
    o81f1993.lead_type as lead_type,
    o81f2186.inbound_outbound as inbound_outbound,
    o81f3072.daily_update as daily_update,
    o81f3074.swp_salesperson_confirmed as swp_salesperson_confirmed,
    o81._dlt_id as dlt_id,
    o81._dlt_load_id as dlt_load_id,
    o81.created_at as created_at,
    o81.updated_at as updated_at
from o81
left join o81f1902 on o81._dlt_id = o81f1902._dlt_parent_id
left join o81f1903 on o81._dlt_id = o81f1903._dlt_parent_id
left join o81f1993 on o81._dlt_id = o81f1993._dlt_parent_id
left join o81f2186 on o81._dlt_id = o81f2186._dlt_parent_id
left join o81f3072 on o81._dlt_id = o81f3072._dlt_parent_id
left join o81f3074 on o81._dlt_id = o81f3074._dlt_parent_id