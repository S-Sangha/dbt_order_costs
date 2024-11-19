{{ config(
    materialized='view',
    tags=['order_models']
) }}

SELECT
    id AS order_id,
    user_id,
    product_id,
    quantity
FROM {{ source('shannon_test', 'orders') }}
