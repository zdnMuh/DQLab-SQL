select distinct * from data_retail
where Product = 'Jaket' AND Average_Transaction_Amount >= 1000000;

select distinct Customer_ID
from summary_transaction
where Average_transaction < 1000000 and product = 'Sepatu';