WITH stocks AS 
    (
    SELECT * 
    FROM {{ ref('stg_localbike__stocks') }}
    ),

    products AS 
    (
    SELECT * 
    FROM {{ ref('stg_localbike__products') }}
    ),

    categories AS 
    (
    SELECT * 
    FROM {{ ref('stg_localbike__categories') }}
    ),

    brands AS 
    (
    SELECT * 
    FROM {{ ref('stg_localbike__brands') }}
    ),

stock_perfomance AS 
    (
    SELECT s.store_id,
        s.product_id,
        p.product_name,
        b.brand_name,
        c.category_name,
        p.model_year,
        s.stock_quantity,
        p.unit_price,
        ROUND(s.stock_quantity * p.unit_price, 2) AS stock_value,
        CASE WHEN s.stock_quantity = 0 THEN 'OUT OF STOCK'
            WHEN s.stock_quantity <= 5 THEN 'CRITICAL STOCK'
            WHEN s.stock_quantity <= 15 THEN 'LOW STOCK'
        ELSE 'ENOUGH STOCK'
    END AS inventory_status
    FROM stocks AS s
    LEFT JOIN products AS p 
        ON s.product_id = p.product_id
    LEFT JOIN brands AS b 
        ON p.brand_id = b.brand_id
    LEFT JOIN categories AS c 
        ON p.category_id = c.category_id
    )

SELECT * 
FROM stock_perfomance