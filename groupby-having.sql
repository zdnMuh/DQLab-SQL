-- Having digunakan pada saat melakukan group by, jadi having menggantikan where pada saat group by.
select customer_id
from subscription
group by customer_id
having count(customer_id) > 1;