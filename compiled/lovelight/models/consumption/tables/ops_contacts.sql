

select
    c.contact_sk,
    c.contact_id,
    c.src_sys_cd,
    c.src_sys_id,
    c.display_name,
    c.first_name,
    c.last_name,
    c.full_name,
    c.contact_description,
    c.email,
    c.email_label,
    c.mobile_phone,
    c.office_phone_number,
    c.home_phone_number,
    c.address_street,
    c.address_street2,
    c.address_city,
    c.address_state,
    c.address_zip,
    c.address_full,
    c.address_latitude,
    c.address_longitude,
    c.zendesk_id,
    c.myob_customer_id,
    c.myob_customer_class,
    c.no_email,
    c.no_phone,
    c.src_created_at,
    c.src_updated_at

from "dw_dev"."processing_tracker"."dim_contact" c