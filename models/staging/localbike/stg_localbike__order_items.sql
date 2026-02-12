SELECT order_id,
    item_id,
    product_id,
    COALESCE(quantity, 0) AS item_quantity,
    COALESCE(list_price, 0) AS unit_price,
    COALESCE(discount, 0) AS discount,
    ROUND((list_price * (1 - discount)) * quantity, 2) AS total_order_item_amount
FROM {{ source('localbike', 'order_items') }}