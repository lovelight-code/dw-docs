



select
    id,
    src_created_at::timestamp as src_created_at,
    src_updated_at::timestamp as src_updated_at,
    name_first,
    name_last,
    name_full,
    email_email,
    sub_contractor,
    mobile_61_format,
    hex_display_colour_code,
    colour_key,
    address_longitude,
    address_latitude,
    address_street,
    address_street2,
    address_city,
    address_state,
    address_zip,
    address_full,
    hd_delivery_code,
    test_record,
    get_tentative_invite,
    is_custom,
    dlt_load_id,
    dlt_id,
    created_at::timestamp as ln_created_at,
    updated_at::timestamp as ln_updated_at
from "dw_dev"."landing_tracker"."ln_installer"
