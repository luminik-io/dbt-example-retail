WITH customer_orders AS (
    SELECT * FROM {{ ref("int_customer_orders") }}
),

customer_stats AS (
    SELECT
        customer_id,
        COUNT(DISTINCT order_id) as total_orders,
        SUM(order_amount) as total_spent,
        MIN(order_date) as first_order_date,
        MAX(order_date) as last_order_date,
        AVG(order_amount) as avg_order_value
    FROM customer_orders
    GROUP BY customer_id
)

SELECT * FROM customer_stats
