CREATE TABLE transaction(
	txn_id  int unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
    txn_date DATETIME NULL ,
    account_id int unsigned NOT NULL,
    txn_type_cd varchar(1) NOT NULL,
    amount double NULL
    );
    
CREATE TABLE account(
account_id int unsigned NOT NULL PRIMARY KEY AUTO_INCREMENT,
avail_balance double NOT NULL,
last_activity datetime NOT NULL
);

START TRANSACTION;

INSERT INTO transaction
(txn_id, txn_date, account_id, txn_type_cd, amount)
VALUES
(1003, now(), 123, 'D', 50);

INSERT INTO transaction
(txn_id, txn_date, account_id, txn_type_cd, amount)
VALUES
(1004, now(), 789, 'C', 52);

UPDATE account
SET avail_balance = available_balance - 50,
last_activity_date = now()
WHERE account_id = 123;

UPDATE account
SET avail_balance = available_balance + 50,
last_activity_date = now()
WHERE account_id = 789;

COMMIT;