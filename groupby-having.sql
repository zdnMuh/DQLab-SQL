select customer_id
from subscription
group by customer_id
having count(customer_id) > 1;