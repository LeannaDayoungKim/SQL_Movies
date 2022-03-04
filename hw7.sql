mysql> insert into Classes
    -> values("Nelson","bc","British",8,16,34000);
mysql> insert into Ships
    -> values ("Nelson","Nelson",1927);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Ships
    -> values("Rodney","Nelson",1927);
Query OK, 1 row affected (0.03 sec)
mysql> insert into Classes
    -> values("Vittorio Veneto","bb","Italy",9,15,41000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Ships
    -> values("Vittorio Veneto","Vittorio Veneto",1940);
Query OK, 1 row affected (0.02 sec)

mysql> insert into SHips
    -> values("Italia","Vittorio Veneto",1940);
Query OK, 1 row affected (0.03 sec)

mysql> insert into Ships
    -> values("Roma","Vittorio Veneto",1942);
Query OK, 1 row affected (0.02 sec)
mysql> update Ships
    -> set launched=0
    -> where name in (select ship
    -> from Outcomes
    -> where battle="Surigao Strait" and result="sunk");
Query OK, 2 rows affected (0.04 sec)
Rows matched: 2  Changed: 2  Warnings: 0
mysql> delete from Outcomes
    -> where battle="Surigao Strait" and result="sunk";
Query OK, 2 rows affected (0.03 sec)

mysql> delete from Ships
    -> where launched=0;
Query OK, 2 rows affected (0.03 sec)
mysql> update Classes
    -> set bore=bore*2.5;
Query OK, 10 rows affected (0.03 sec)
Rows matched: 10  Changed: 10  Warnings: 0

mysql> update Classes
    -> set displacement=displacement/1.1;
Query OK, 10 rows affected (0.03 sec)
Rows matched: 10  Changed: 10  Warnings: 0
mysql> update Outcomes
    -> set result="sunk"
    -> where ship in (select name from Ships natural join Classes
    -> where country = "Japan");
Query OK, 3 rows affected (0.03 sec)
Rows matched: 4  Changed: 3  Warnings: 0

mysql> update Outcomes
    -> set result="delete"
    -> where ship in (select name
    -> from Ships
    -> group by class
    -> having count(name)<3);
Query OK, 5 rows affected (0.03 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> update Ships
    -> set launched=0
    -> where name in (select ship from Outcomes
    -> where result="delete");
Query OK, 4 rows affected (0.03 sec)
Rows matched: 4  Changed: 4  Warnings: 0

mysql> delete from Outcomes
    -> where result="delete";
Query OK, 5 rows affected (0.00 sec)

mysql> delete from Ships
    -> where launched=0;
Query OK, 4 rows affected (0.03 sec)







