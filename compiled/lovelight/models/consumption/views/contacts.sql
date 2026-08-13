

select
    contact_sk,
    contact_id,
    display_name,
    first_name,
    last_name,
    full_name,
    contact_description,
    email,
    email_label,
    mobile_phone,
    office_phone_number,
    home_phone_number,
    address_street,
    address_street2,
    address_city,
    address_state,
    address_zip,
    address_full,
    address_latitude,
    address_longitude,
    zendesk_id,
    myob_customer_id,
    myob_customer_class,
    no_email,
    no_phone
from "dw_dev"."consumption"."ops_contacts"