select distinct Product Produk, avg(Average_transaction) 'Jumlah transaksi (Rupiah)', sum(Count_Transaction) 'Barang terjual'
from summary_transaction
group by Product;