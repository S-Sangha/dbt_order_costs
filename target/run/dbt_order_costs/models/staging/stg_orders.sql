

  create view "dev_etleap"."shannon_test"."stg_orders__dbt_tmp" as (
    

SELECT
    id AS order_id,
    user_id,
    product_id,
    quantity
FROM "dev_etleap"."shannon_test"."orders"
  ) ;
