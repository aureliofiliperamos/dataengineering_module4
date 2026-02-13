SELECT customer_id,
    UPPER(first_name) AS first_name,
    UPPER(last_name) AS last_name,
    phone AS phone_number,
    email,
    UPPER(street) AS street_address,
    UPPER(city) AS city,
    UPPER(state) AS state,
    zip_code AS postal_code
FROM {{ source('localbike', 'customers') }}