-- tanpa having
select product_id, max(total_price) as total
from invoice
group by product_id;
-- dengan having
select product_id, max(total_price) as total
from invoice
group by product_id
having max(total_price) > 1000000;
-- dengan having
select product_id, max(pinalty) as total
from invoice
group by product_id
having max(pinalty) > 30000;

-- tanpa having
select product_id, min(total_price) as total
from invoice
group by product_id;
-- dengan having
select product_id, min(total_price) as total
from invoice
group by product_id
having min(total_price) < 500000;
-- dengan having
select product_id, min(pinalty) as total
from invoice
group by product_id
having min(pinalty) < 50000;

-- tanpa having
select product_id, avg(total_price) as total
from invoice
group by product_id;
-- dengan having
select product_id, avg(total_price) as total
from invoice
group by product_id
having avg(total_price) > 100000;
-- dengan having
select product_id, avg(pinalty) as total
from invoice
group by product_id
having avg(pinalty) > 30000;

-- Lakukan query untuk dapat mengeluarkan product_id, rata-rata nilai pinalty dan jumlah customer_id yang di group by berdasarkan product_id
-- yang memiliki jumlah customer_id diatas nilai 20.
select product_id, avg(pinalty), count(customer_id) as total
from invoice
group by product_id
having count(customer_id) > 20;