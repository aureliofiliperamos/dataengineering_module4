SELECT order_id,
    item_id,
    product_id,
    COALESCE(quantity, 0) AS item_quantity,
    COALESCE(list_price, 0) AS unit_price,
    COALESCE(discount, 0) AS discount
FROM {{ source('localbike', 'order_items') }}