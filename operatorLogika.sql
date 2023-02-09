-- Untuk filtering user yangsudah membeli 3 produk
select distinct customer_id
from data_retail_undian
where unik_produk = 3 and rata_rata_transaksi >= 1500000;

-- Untuk filtering semua user kecuali syarat (1)
select distinct customer_id
from data_retail_undian
where not (unik_produk >= 3 and rata_rata_transaksi >= 1500000);