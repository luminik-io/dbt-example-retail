WITH source AS (
    SELECT * FROM {{ source("raw", "orders") }}
)

SELECT
    order_id,
    customer_id,
    order_date,
    order_status,
    order_amount,
    payment_method,
    shipping_address,
    created_at,
    updated_at
FROM source
