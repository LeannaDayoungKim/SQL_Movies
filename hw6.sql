mysql> select count(class)
    -> from Classes
    -> where type = "bb";
mysql> select avg(numGuns)
    -> from Classes
    -> where type="bb";
mysql> select avg(numGuns)
    -> from Classes natural join Ships
    -> where type = "bb";
mysql> select class,min(launched)
    -> from Ships
    -> group by class;
mysql> select class,count(ship)
    -> from Ships,Outcomes
    -> where Ships.name = Outcomes.ship and result ="sunk"
    -> group by class;
mysql> create view X as
    -> select class
    -> from Ships
    -> group by class
    -> having count(name)>=3;
Query OK, 0 rows affected (0.04 sec)

mysql> create view Y as select class,ship
    -> from Ships,Outcomes
    -> where Ships.name=Outcomes.ship and Outcomes.result="sunk";
Query OK, 0 rows affected (0.04 sec)

mysql> select class, count(ship)
    -> from X natural left outer join Y
    -> group by class;
mysql> drop view x;
Query OK, 0 rows affected (0.00 sec)

mysql> drop view y;
Query OK, 0 rows affected (0.00 sec)
mysql> select country,avg(displacement)
    -> from Ships natural join Classes
    -> group by country;
mysql> select battle,sum(numGuns)
    -> from (Ships natural join Classes) join Outcomes
    -> where Ships.name=Outcomes.ship
    -> group by battle
    -> ;
