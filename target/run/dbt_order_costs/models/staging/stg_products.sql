

  create view "dev_etleap"."shannon_test"."stg_products__dbt_tmp" as (
    

SELECT
    id AS product_id,
    name AS product_name,
    description AS product_description,
    cost AS product_cost
FROM "dev_etleap"."shannon_test"."products"
  ) ;
