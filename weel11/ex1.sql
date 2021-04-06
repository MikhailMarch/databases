CREATE TABLE account(
username varchar(255),
fullname varchar(255),
balance integer,
group_id integer
);

insert into account values('jones', 'Alice Jones', 82, 1);
insert into account values('bitdiddl', 'Ben Bitdiddle', 65, 1);
insert into account values('mike', 'Michael Dole', 73, 2);
insert into account values('alyssa', 'Alyssa P. Hacker', 79, 3);
insert into account values('bbrown', 'Bob Brown', 100, 3);

for the first 2 steps terminals shows different information as we have not commited the transaction and have select statement insade it.
When i started transaction on the second terminal and updated balance, then updated from the first terminal it stucked as there was uncommited transaction.
After I rollbacked second one, the first terminal was able to complete. So, to prevent the lose of isolation level the first terminal update was blocked
