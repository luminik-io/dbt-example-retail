WITH source AS (
    SELECT * FROM {{ source("raw", "products") }}
)

SELECT
    product_id,
    product_name,
    category,
    price,
    inventory_amount,
    created_at,
    updated_at
FROM source
