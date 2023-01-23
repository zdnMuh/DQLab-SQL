-- Digunakan pada  yang tidak mendukung tipe data boolean. (Gunakan bit atau tinyint)
select distinct
	Customer_ID, Product,
    Average_transaction,
    Average_transaction >= 1000000 is_eligible
from summary_transaction;