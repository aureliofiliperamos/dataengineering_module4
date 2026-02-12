SELECT store_id,
    UPPER(store_name) AS store_name,
    phone,
    email,
    UPPER(street) AS address,
    UPPER(city) AS city,
    UPPER(state) AS state,
    zip_code
FROM {{ source('localbike', 'stores') }}