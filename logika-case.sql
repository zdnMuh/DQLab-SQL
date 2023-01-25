select distinct customer_ID, Product, average_transaction, count_transaction,
case
	when average_transaction > 2000000 and count_transaction > 30 then 'Platinum Member'
	when average_transaction between 1000000 and 2000000 and count_transaction between 20 and 30 then 'Gold Member'
	when average_transaction < 1000000 and count_transaction < 20 then 'Silver Member'
	else 'Other Member' end as Membership
from summary_transaction;

select distinct Customer_ID, Product, Average_transaction, Count_Transaction,
case
	when Average_transaction > 1000000 then '1-2x Email dalam seminggu'
	when Average_transaction < 1000000 then '4-5x Email dalam seminggu'
end as frekuensi_email
from summary_transaction;