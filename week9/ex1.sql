BEGIN;
update account set credit = credit - 500 where account.account_id = 1;
update account set credit = credit + 500 where account.account_id = 3;
update account set credit = credit - 700 where account.account_id = 2;
update account set credit = credit + 700 where account.account_id = 1;
update account set credit = credit - 100 where account.account_id = 2;
update account set credit = credit + 100 where account.account_id = 3;
rollback


alter table account add column BankName varchar(50);
update account set BankName = 'SpearBank' where account.account_id = 1 or account.account_id = 3;
update account set BankName = 'Tinkoff' where account.account_id = 2;
insert into account values(4,'Fee',0);

begin;

update account set credit = credit - 500 where account.account_id = 1;
update account set credit = credit + 500 where account.account_id = 3;

update account set credit = credit - 700 where account.account_id = 2;
update account set credit = credit + 700 where account.account_id = 1;
update account set credit = credit - 30 where account.account_id = 2;
update account set credit = credit + 30 where account.account_id = 4;

update account set credit = credit - 100 where account.account_id = 2;
update account set credit = credit + 100 where account.account_id = 3;
update account set credit = credit - 30 where account.account_id = 2;
update account set credit = credit + 30 where account.account_id = 4;

select a.credit from account a;

rollback;
