stock=# CREATE TABLE stock(
stock(#     item INTEGER NOT NULL,
stock(#     dt DATE NOT NULL,
stock(#     qty INTEGER NOT NULL,
stock(#     PRIMARY KEY(item, dt)
stock(# );
CREATE TABLE

stock=# INSERT INTO stock(item, dt, qty) VALUES
stock-# (1001, '2019-11-11', 340),
stock-# (1002, '2019-11-23', 120),
stock-# (1002, '2019-12-20', 201),
stock-# (1002, '2019-12-16', 402),
stock-# (1001, '2020-01-19', 890),
stock-# (1001, '2020-02-12', 340),
stock-# (1001, '2020-02-27', 101),
stock-# (1001, '2020-02-29', 391),
stock-# (1002, '2020-03-11', 172),
stock-# (1002, '2020-04-21', 150);
INSERT 0 10

stock=# SELECT * FROM stock;
 item |     dt     | qty
------+------------+-----
 1001 | 2019-11-11 | 340
 1002 | 2019-11-23 | 120
 1002 | 2019-12-20 | 201
 1002 | 2019-12-16 | 402
 1001 | 2020-01-19 | 890
 1001 | 2020-02-12 | 340
 1001 | 2020-02-27 | 101
 1001 | 2020-02-29 | 391
 1002 | 2020-03-11 | 172
 1002 | 2020-04-21 | 150
(10 rows)

CREATE VIEW stockmonthly AS 
SELECT 