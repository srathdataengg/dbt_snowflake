select
    customer_id,
    customer_name,
    email,
    created_at::date as created_date
from {{ source('silver', 'silver_customers') }}
