

  create view "dev_etleap"."shannon_test"."stg_users__dbt_tmp" as (
    

SELECT
    id AS user_id,
    name AS user_name
FROM "dev_etleap"."shannon_test"."users"
  ) ;
