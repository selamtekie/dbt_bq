-- Test to check if there are no orders from today

-- select count(*) as num_orders_today
-- from {{ref('stg_orders')}}
-- where DATE(order_date) = CURRENT_DATE()
-- having count(*) >0

-- This test fails if any orders exist today
select *
from {{ ref('stg_orders') }}
where DATE(order_date) = CURRENT_DATE()
