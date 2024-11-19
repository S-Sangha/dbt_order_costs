{{ config(
    materialized='view',
    tags=['user_models']
) }}

SELECT
    id AS user_id,
    name AS user_name
FROM {{ source('shannon_test', 'users') }}
