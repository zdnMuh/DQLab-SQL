SELECT a.Customer_ID, a.Transaksi_Sepatu, b.Transaksi_Jaket
FROM (select customer_id, sum(count_transaction) transaksi_sepatu
      from data_retail
      where product = 'sepatu'
      group by 1) a
JOIN (select Customer_ID, sum(Count_Transaction) transaksi_jaket
      from data_retail
      where product = 'Jaket'
      group by 1) b
	  on a.Customer_ID = b.Customer_ID
ORDER BY 2 DESC,3 DESC;

SELECT
	customer_id, count_transaction,
    (
    SELECT AVG(count_transaction)
    		FROM data_retail
            WHERE product = 'sepatu'
    ) Avg_Transaction
FROM data_retail
WHERE product = 'sepatu';

SELECT 
A.Product, 
A.total_buyer, 
D.loyal_customer
FROM (
   SELECT product, count(distinct customer_id) total_buyer
   FROM data_retail
   ___ ___ ___) A
JOIN (
   SELECT B.___, ___(___ ___) loyal_customer
   FROM data_retail B
   JOIN (
    SELECT ___, ___(___) AS Count_Transaction
    FROM data_retail 
    GROUP BY 1
   ) C ON C.___ = B.___ AND B.___ > C.___
   GROUP BY 1
   ) D ON A.___ = D.___