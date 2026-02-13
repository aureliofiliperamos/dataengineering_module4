SELECT store_id,
    UPPER(store_name) AS store_name,
    phone AS phone_number,
    email,
    UPPER(street) AS street_address,
    UPPER(city) AS city,
    UPPER(state) AS state,
    zip_code AS postal_code
FROM {{ source('localbike', 'stores') }}