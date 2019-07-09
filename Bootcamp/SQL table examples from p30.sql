Select * from transactions;
SELECT count(*) FROM transactions;
select count(*) from transactions
where txn_type = 'Deposit';

select *, sum(amount)
from transactions;

select min(amount) as 'Total'
from transactions;

