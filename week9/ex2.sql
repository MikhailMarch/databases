create table Ledger(
	ledger_id integer primary key,
	from_id integer references account(account_id),
	to_id integer references account(account_id),
	fee integer,
	amount integer,
	transactionDateTime timestamp
);

