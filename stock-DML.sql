stock=# INSERT INTO tbl_stock VALUES
stock-# (1, 'Mouse', 18, 500, 1),
stock-# (2, 'Keyboard', 5, 450, 3),
stock-# (3, 'Modem', 10, 1200, 2),
stock-# (4, 'Memory', 100, 1500, 5),
stock-# (5, 'Headphone', 50, 750, 4),
stock-# (6, 'Memory', 2, 3500, 4);
INSERT 0 6

stock=# UPDATE tbl_stock
stock-# SET int_price = int_price + 1.50;
UPDATE 6

stock=# SELECT * FROM tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           18 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(6 rows)

stock=# SELECT * from tbl_stock WHERE int_price > 1000;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
(3 rows)

stock=# SELECT * FROM tbl_stock ORDER BY vchr_name ASC;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           18 |     501.5 |               1
(6 rows)

stock=# SELECT * FROM tbl_stock ORDER BY vchr_name ASC LIMIT 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)

stock=# SELECT * FROM tbl_stock ORDER BY vchr_name DESC LIMIT 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           18 |     501.5 |               1
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)

stock=# SELECT vchr_name, int_quantity, int_price, int_quantity * int_price FROM tbl_stock;
 vchr_name | int_quantity | int_price | ?column?
-----------+--------------+-----------+----------
 Mouse     |           18 |     501.5 |     9027
 Keyboard  |            5 |     451.5 |   2257.5
 Modem     |           10 |    1201.5 |    12015
 Memory    |          100 |    1501.5 |   150150
 Headphone |           50 |     751.5 |    37575
 Memory    |            2 |    3501.5 |     7003
(6 rows)

stock=# DELETE FROM tbl_stock WHERE fk_int_supplier IN
stock-# (SELECT pk_int_supplier_id FROM tbl_supplier WHERE vchr_supplier_name = 'Creative');
DELETE 1

stock=# SELECT * FROM tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           18 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(5 rows)

stock=# INSERT INTO tbl_dept VALUES
stock-# (1, 'Computer Science', 'CS'),
stock-# (2, 'Electronics', 'EC'),
stock-# (3, 'Commerce', 'CC'),
stock-# (4, 'Arts', 'AR');
INSERT 0 4
stock=# SELECT * FROM tbl_dept;
 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | Computer Science | CS
              2 | Electronics      | EC
              3 | Commerce         | CC
              4 | Arts             | AR
(4 rows)

