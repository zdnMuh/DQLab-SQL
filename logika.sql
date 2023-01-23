SELECT
	Customer_ID, Product, average_transaction_amount,
    product = 'Jaket' AND average_transaction_amount >= 1000000 loyal_buyer_jaket
FROM data_retail
WHERE product = 'Jaket';

select Customer_ID, Product, average_transaction_amount,
Product = 'Jaket' or Product = 'Baju' buyer_fashion
from data_retail;

select * from data_retail
where not product = 'Jaket';

select Customer_ID, Product, Average_Transaction_Amount,
    product = 'Jaket' xor average_transaction_amount > 1000000 logika_xor
FROM data_retail;

