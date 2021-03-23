BEGIN;
update account set credit = credit - 500 where account.account_id = 1;
update account set credit = credit + 500 where account.account_id = 3;
update account set credit = credit - 700 where account.account_id = 2;
update account set credit = credit + 700 where account.account_id = 1;
update account set credit = credit - 100 where account.account_id = 2;
update account set credit = credit + 100 where account.account_id = 3;
rollback
