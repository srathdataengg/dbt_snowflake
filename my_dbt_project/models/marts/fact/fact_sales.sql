with orders as (
    select * from {{ source('silver', 'silver_orders') }}
),
items as (
    select * from {{ source('silver', 'silver_order_items') }}
)
select
    o.order_id,
    o.order_date,
    o.customer_id,
    sum(i.quantity * i.price) as total_order_value
from orders o
join items i using(order_id)
group by 1,2,3
