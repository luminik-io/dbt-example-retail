WITH source AS (
    SELECT * FROM {{ source("raw", "customers") }}
)

SELECT
    customer_id,
    first_name,
    last_name,
    email,
    date_of_birth,
    city,
    country,
    created_at,
    updated_at
FROM source
