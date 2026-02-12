SELECT category_id,
    UPPER(category_name) AS category_name
FROM {{ source('localbike', 'categories') }}