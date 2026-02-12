SELECT customer_id,
    UPPER(first_name) AS first_name,
    UPPER(last_name) AS last_name,
    phone,
    email,
    UPPER(street) AS address,
    UPPER(city) AS city,
    UPPER(state) AS state,
    zip_code
FROM {{ source('localbike', 'customers') }}