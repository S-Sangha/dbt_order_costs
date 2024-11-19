
  
    

  create  table
    "dev_etleap"."shannon_test"."costs__dbt_tmp"
    
    
    
  as (
    

WITH order_details AS (
    SELECT
        orders.order_id,
        orders.user_id,
        orders.product_id,
        orders.quantity,
        products.product_cost,
        orders.quantity * products.product_cost AS total_cost
    FROM "dev_etleap"."shannon_test"."stg_orders" AS orders
    JOIN "dev_etleap"."shannon_test"."stg_products" AS products
        ON orders.product_id = products.product_id
)

SELECT
    order_id,
    user_id,
    product_id,
    quantity,
    product_cost,
    total_cost
FROM order_details
ORDER BY order_id
  );
  