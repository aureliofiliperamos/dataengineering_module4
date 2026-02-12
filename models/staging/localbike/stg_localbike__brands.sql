SELECT brand_id,
    UPPER(brand_name) AS brand_name
FROM {{ source('localbike', 'brands') }}