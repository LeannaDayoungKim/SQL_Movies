mysql> alter table Classes
    -> drop bore;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> alter table Ships
    -> add company varchar(20);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update Ships
    -> set company="KoreanShipCompany";
Query OK, 18 rows affected (0.03 sec)
Rows matched: 18  Changed: 18  Warnings: 0
