SELECT product_id,
    UPPER(product_name) AS product_name,
    brand_id,
    category_id,
    model_year,
    COALESCE(list_price, 0) as unit_price
FROM {{ source('localbike', 'products') }}