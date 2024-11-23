WITH customers AS (
    SELECT * FROM {{ ref("stg_customers") }}
),

orders AS (
    SELECT * FROM {{ ref("stg_orders") }}
)

SELECT
    customers.customer_id,
    customers.email,
    customers.city,
    orders.order_id,
    orders.order_date,
    orders.order_amount,
    orders.order_status
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
