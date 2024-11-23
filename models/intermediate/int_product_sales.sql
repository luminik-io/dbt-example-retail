WITH orders AS (
    SELECT * FROM {{ ref("stg_orders") }}
),

products AS (
    SELECT * FROM {{ ref("stg_products") }}
)

SELECT
    products.product_id,
    products.product_name,
    products.category,
    products.price,
    COUNT(DISTINCT orders.order_id) as total_orders,
    SUM(orders.order_amount) as total_revenue
FROM products
LEFT JOIN orders ON products.product_id = orders.product_id
GROUP BY 1, 2, 3, 4
