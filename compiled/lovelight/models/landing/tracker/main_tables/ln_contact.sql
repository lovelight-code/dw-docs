-- ============================================================
-- Model: ln_contact
-- Description: Landing-layer view that flattens object_13
--              and its subtables into one record per contact.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_13 table
-- ------------------------------------------------------------
o13 as (
    select *
    from landing_tracker.object_13
),

-- ------------------------------------------------------------
-- Subtables: each aggregated by parent to avoid 1:N expansion
-- ------------------------------------------------------------
-- ------------------------------------------------------------
-- Subtable: object_13__field_2638
-- ------------------------------------------------------------
o13f2638 as (
    select
        _dlt_parent_id,
        max(value) as myob_customer_class
    from landing_tracker.object_13__field_2638
    group by 1
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o13.id,
    o13.created as src_created_at,
    o13.updated as src_updated_at,
    o13.field_1080 as mobile_phone_ctc_display_name,
    o13.field_108_first as name_first,
    o13.field_108_full as name_full,
    o13.field_108_last as name_last,
    o13.field_1593 as zendesk_id,
    o13.field_1598 as zendesk_link_sml,
    o13.field_1599 as zendesk_link_lrg,
    o13.field_1615 as temp,
    o13.field_1712 as display_name,
    o13.field_1713 as email_as_string,
    o13.field_1726 as mobile_phone_ctc_display_number,
    o13.field_1767 as lifetime_value,
    o13.field_1779 as created_by,
    o13.field_1808 as active_job,
    o13.field_1809 as open_opp,
    o13.field_1810 as unpaid_invoice,
    o13.field_228_full as office_phone_full,
    o13.field_228_number as office_phone_number,
    o13.field_229_area as home_phone_area,
    o13.field_229_full as home_phone_full,
    o13.field_229_number as home_phone_number,
    o13.field_231 as mobile_phone,
    o13.field_2533 as myob_customer_id,
    o13.field_2918 as no_email,
    o13.field_2919 as no_phone,
    o13.field_590_all_day as date_created_all_day,
    o13.field_590_date as date_created_date,
    o13.field_75 as src_sys_id,
    o13.field_76_email as email_email,
    o13.field_76_label as email_label,
    o13.field_77_city as address_city,
    o13.field_77_full as address_full,
    o13.field_77_latitude as address_latitude,
    o13.field_77_longitude as address_longitude,
    o13.field_77_state as address_state,
    o13.field_77_street as address_street,
    o13.field_77_street2 as address_street2,
    o13.field_77_zip as address_zip,
    o13.field_79 as description_general_note,
    o13f2638.myob_customer_class as myob_customer_class,
    o13._dlt_id as dlt_id,
    o13._dlt_load_id as dlt_load_id,
    o13.created_at as created_at,
    o13.updated_at as updated_at
from o13
left join o13f2638 on o13._dlt_id = o13f2638._dlt_parent_id