
  
    

  create  table
    "dev_etleap"."shannon_test"."spend_per_user__dbt_tmp"
    
    
    
  as (
    

WITH user_spends AS (
    SELECT
        costs.user_id,
        SUM(costs.total_cost) AS total_spend
    FROM "dev_etleap"."shannon_test"."costs" AS costs
    GROUP BY costs.user_id
)

SELECT
    user_id,
    total_spend
FROM user_spends
ORDER BY user_id
  );
  