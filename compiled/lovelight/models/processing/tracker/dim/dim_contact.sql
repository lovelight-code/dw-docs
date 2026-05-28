

-- ============================================================
-- Model: dim_contact
-- Description: Contact dimension containing slowly changing descriptive attributes.
-- Source: contact (snapshot model)
-- ============================================================

with current as (
    select * from "dw_dev"."history_tracker"."contact"
    where dbt_valid_to is null
)

select
    md5(id::varchar) as contact_sk,
    id as contact_id,
    display_name,
    name_first as first_name,
    name_last as last_name,
    name_full as full_name,
    description_general_note as contact_description,
    mobile_phone_ctc_display_name,
    mobile_phone_ctc_display_number,
    mobile_phone,
    email_email as email,
    email_as_string,
    office_phone_number,
    office_phone_full,
    home_phone_number,
    home_phone_full,
    home_phone_area,
    address_longitude,
    address_latitude,
    address_street,
    address_street2,
    address_city,
    address_state,
    address_zip,
    address_full,
    email_label,
    zendesk_id,
    zendesk_link_sml,
    zendesk_link_lrg,
    myob_customer_id,
    myob_customer_class,
    created_by,
    no_email,
    no_phone,
    'KNACK' as src_sys_cd,
    src_sys_id,
    src_created_at,
    src_updated_at,
    (case when dbt_valid_to is null then true else false end) as is_current,
    current_timestamp as proc_created_at,
    current_timestamp as proc_updated_at,
    'b5f758a6-fcbe-479a-a1a0-a2dd8a04fba5' as load_run_id
from current