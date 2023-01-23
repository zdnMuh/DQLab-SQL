-- Having digunakan pada saat melakukan group by, jadi having menggantikan where pada saat group by.
select customer_id
from subscription
group by customer_id
having count(customer_id) > 1;

-- Selanjutnya kita akan menampilkan perubahan yang dilakukan konsumen tersebut.
select customer_id, product_id, subscription_date
from subscription
where customer_id in
	(select customer_id
	 from subscription
	 group by customer_id
	 having count(customer_id) > 1
	)
order by customer_id asc;

-- Isikan bagian yang kosong dengan melakukan JOIN table subscription dan customer dengan menggabungkan
-- customer_id dari table subscription dan id dari table customer
-- Tanpa menggunakan as
select b.name, b.address, b.phone, a.product_id, a.subscription_date
from subscription  a
join customer  b
on a.customer_id = b.id
where b.id in
(select customer_id
 from Subscription
 group by customer_id
 having count(customer_id) > 1
)
order by b.id asc;