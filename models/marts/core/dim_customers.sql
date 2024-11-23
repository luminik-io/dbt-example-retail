WITH customers AS (
    SELECT * FROM {{ ref("stg_customers") }}
),

final AS (
    SELECT
        customer_id,
        first_name,
        last_name,
        email,
        city,
        country,
        created_at,
        COALESCE(updated_at, created_at) as last_modified_at
    FROM customers
)

SELECT * FROM final
