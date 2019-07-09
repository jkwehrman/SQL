-- wrong way to do a join
select account_holder, txn_type, amount 
from accounts, transactions
where accounts.ID = transactions.account_id;

-- right way to do an inner join
select accountholder, txn_type, amount 
from accounts a
inner join
transactions t
on a.ID = t.account_ID;

-- use left outer join
select accountholder, txn_type, amount 
from accounts a
left outer join
transactions t
on a.ID = t.account_ID;

