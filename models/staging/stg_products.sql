{{ config(
    materialized='view',
    tags=['product_models']
) }}

SELECT
    id AS product_id,
    name AS product_name,
    description AS product_description,
    cost AS product_cost
FROM {{ source('shannon_test', 'products') }}
